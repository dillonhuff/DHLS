class fifo {
  input_1 read_valid;
  output_1 read_ready;
  input_32 in_data;

  input_1 write_valid;
  output_1 write_ready;
  output_32 out_data;

  void defaults() {
    write_port(read_valid, 0);
    write_port(write_valid, 0);    
  }

  bit_32 read_fifo() {
  stall_ready: stall(read_port(read_ready));
  set_valid: write_port(read_valid, 1);
  ret: return read_port(out_data);

    add_constraint(end(stall_ready) < start(set_valid));
    add_constraint(start(set_valid) == start(ret));
  }

  void write_fifo(bit_32& data) {
  stall_ready: stall(read_port(write_ready));
  set_valid: write_port(write_valid, 1);
  set_data: write_port(in_data, data);

    add_constraint(end(stall_ready) < start(set_valid));
    add_constraint(start(set_valid) == start(ret));
  }

};

class axi_ram {

  input_16 s_axi_awaddr;
  input_1 s_axi_awvalid;
  output_1 s_axi_awready;
  input_3 s_axi_awsize;
  input_2 s_axi_awburst;
  input_8 s_axi_awlen;

  input_16 s_axi_araddr;
  input_1 s_axi_arvalid;
  output_1 s_axi_arready;
  input_3 s_axi_arsize;
  input_2 s_axi_arburst;
  input_8 s_axi_arlen;
  
  output_1 s_axi_rvalid;
  input_1 s_axi_rready;
  output_32 s_axi_rdata;

  void start_read_burst(bit_3& arsize,
                        bit_2& arburst,
                        bit_8& arlen,
                        bit_16& araddr) {
    stall(read_port(s_axi_arready));

    write_port(s_axi_arvalid, 1);
    write_port(s_axi_arsize, arsize);    
    write_port(s_axi_arburst, arburst);
    write_port(s_axi_arlen, arlen);
    write_port(s_axi_araddr, araddr);
  }
  
  void start_write_burst(bit_3& awsize,
                         bit_2& awburst,
                         bit_8& awlen,
                         bit_16& awaddr) {
    stall(read_port(s_axi_awready));

    write_port(s_axi_awvalid, 1);
    write_port(s_axi_awsize, awsize);    
    write_port(s_axi_awburst, awburst);
    write_port(s_axi_awlen, awlen);
    write_port(s_axi_awaddr, awaddr);
  }

  bit_32 read_next_beat() {
  stall_valid: stall(read_port(s_axi_rvalid));
  set_ready: write_port(s_axi_rready, 1);

    add_constraint(end(stall_valid) < start(set_ready));

  ret: return read_port(s_axi_rdata);

    add_constraint(end(set_ready) + 1 == start(ret));
  }


};

void axi_read_burst_func(fifo& result,
                         axi_ram& ram) {
  ram.start_read_burst(3, 1, 5, 12);

  result.write_fifo(ram.read_next_beat());
  result.write_fifo(ram.read_next_beat());
  result.write_fifo(ram.read_next_beat());
}
