#include "catch.hpp"

#include "verilog_backend.h"
#include "llvm_codegen.h"
#include "test_utils.h"

using namespace dbhc;
using namespace llvm;
using namespace std;

namespace ahaHLS {

  Type* halideType(Type* tp) {
    if (PointerType::classof(tp)) {
      Type* underlying = dyn_cast<PointerType>(tp)->getElementType();
      return halideType(underlying)->getPointerTo();
    } else if (StructType::classof(tp)) {
      StructType* stp = dyn_cast<StructType>(tp);
      string name = stp->getName();
      if (hasPrefix(name, "class.AxiPackedStencil_")) {
        int typeWidth = stencilTypeWidth(name);
        int nRows = stencilNumRows(name);
        int nCols = stencilNumCols(name);
        return intType(typeWidth*nRows*nCols);
      } else {
        return tp;
      }
    } else {
      return tp;
    }
  }

  bool isConstructor(const std::string& classPrefix, Function* func) {
    string name = func->getName();
    if (canDemangle(name)) {
      name = demangle(name);
      if (hasPrefix(name, classPrefix)) {
        string mName = drop("::", name);
        string rName = takeUntil("(", mName);
        return hasPrefix(rName, classPrefix);
      }
    }

    return false;
  }
  
  void rewriteInstr(Function* f,
                    Function* orig,
                    map<BasicBlock*, BasicBlock*>& bbRewrites,
                    map<Value*, Value*>& rewrites,
                    Instruction* toRewrite) {
    BasicBlock* repBB = map_find(toRewrite->getParent(), bbRewrites);
    IRBuilder<> b(repBB);
    if (AllocaInst::classof(toRewrite)) {
      Type* allocTp = halideType(toRewrite->getType());
      auto* rw = b.CreateAlloca(allocTp);
      rewrites[toRewrite] = rw;
    } else if (CallInst::classof(toRewrite)) {
      CallInst* callToRW = dyn_cast<CallInst>(toRewrite);
      Function* func = callToRW->getCalledFunction();

      if (isMethod("hls_stream_", "hls_stream", func)) {
        //assert(false);
      } else if (isConstructor("hls_stream", func)) {
        // Do nothing, the constructor is a no-op
      } else {
        cout << "Unsupported call" << valueString(toRewrite) << endl;
        //assert(false);
      }
    } else if (BranchInst::classof(toRewrite)) {
      BranchInst* bi = dyn_cast<BranchInst>(toRewrite);
      if (bi->isConditional()) {
        cout << "Error: Conditional branch " << valueString(toRewrite) << endl;
        //assert(false);
      } else {
        auto* targetInRewritten = map_find(bi->getSuccessor(0), bbRewrites);
        auto newBr = b.CreateBr(targetInRewritten);
        rewrites[toRewrite] = newBr;
      }

    } else if (PHINode::classof(toRewrite)) {
      int reservedVals = dyn_cast<PHINode>(toRewrite)->getNumIncomingValues();
      auto* replacement = b.CreatePHI(halideType(toRewrite->getType()), reservedVals);
      rewrites[toRewrite] = replacement;
    } else {
      cout << "Error in Halide stencil rewrite: Unsupported instr = " << valueString(toRewrite) << endl;
      //assert(false);
    }

  }

  Function* rewriteHalideStencils(Function* orig) {
    vector<Type*> inputTypes;
    for (int i = 0; i < orig->arg_size(); i++) {
      Type* rwTp = halideType(getArg(orig, i)->getType());
      inputTypes.push_back(rwTp);
    }
    Function* f = mkFunc(inputTypes, string(orig->getName( )) + "_rewritten", &(getGlobalLLVMModule()));

    map<Value*, Value*> rewrites;
    for (int i = 0; i < orig->arg_size(); i++) {
      rewrites[getArg(orig, i)] = getArg(f, i);
    }

    map<BasicBlock*, BasicBlock*> bbRewrites;
    for (auto& bb : orig->getBasicBlockList()) {
      bbRewrites[&bb] = mkBB(string(bb.getName()), f);
    }
    
    for (auto& bb : orig->getBasicBlockList()) {
      for (auto& instrR : bb) {
        Instruction* instr = &instrR;
        rewriteInstr(f, orig, bbRewrites, rewrites, instr);
      }
    }
    return f;
  }

  TEST_CASE("Rewrite stencils as int computation") {
    SMDiagnostic Err;
    LLVMContext Context;
    setGlobalLLVMContext(&Context);
    
    std::unique_ptr<Module> Mod = loadLLFile(Context, Err, "vhls_target");
    setGlobalLLVMModule(Mod.get());

    Function* f = getFunctionByDemangledName(Mod.get(), "vhls_target");
    deleteLLVMLifetimeCalls(f);
    
    cout << "Origin function" << endl;
    cout << valueString(f) << endl;

    Function* rewritten =
      rewriteHalideStencils(f);

    cout << "Rewritten function" << endl;
    cout << valueString(rewritten) << endl;
    
  }
  
}
