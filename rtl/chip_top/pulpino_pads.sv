module pulpino_pads
  (
    //////////
    // PADS //
    //////////

    // Clock and Reset
    inout  wire              clk_pad,
    inout  wire              rst_n_pad,

    inout  wire              fetch_enable_pad,

    //SPI Slave
    inout  wire              spi_clk_pad,
    inout  wire              spi_cs_pad,
    inout  wire              spi_miso_pad,
    inout  wire              spi_mosi_pad,

    //SPI Master
    inout  wire              spi_master_clk_pad,
    inout  wire              spi_master_csn0_pad,
    inout  wire              spi_master_csn1_pad,
    inout  wire              spi_master_csn2_pad,
    inout  wire              spi_master_csn3_pad,
    inout  wire              spi_master_miso_pad,
    inout  wire              spi_master_mosi_pad,

    inout  wire              scl_pad,
    inout  wire              sda_pad,

    inout  wire              uart_tx_pad,
    inout  wire              uart_rx_pad,

    inout  wire       [20:0] gpio_pad,

    inout  wire        [7:0] upio_pad,

    // JTAG signals
    inout  wire              tck_pad,
    inout  wire              trstn_pad,
    inout  wire              tms_pad,
    inout  wire              tdi_pad,
    inout  wire              tdo_pad,

    ///////////////////
    // TO TOP MODULE //
    ///////////////////
    // Clock and Reset
    output logic              clk /*verilator clocker*/,
    input  logic              clk_pad_tie0,
    input  logic              clk_pad_tie1,
    output logic              rst_n,
    input  logic              rst_n_pad_tie0,
    input  logic              rst_n_pad_tie1,
    input  logic              rst_n_pad_OEN_1,
    input  logic              rst_n_pad_I_0,

    output logic              fetch_enable_i,
    input  logic              fetch_enable_pad_tie0,
    input  logic              fetch_enable_pad_tie1,
    input  logic              fetch_enable_pad_OEN_1,
    input  logic              fetch_enable_pad_I_0,

    //SPI Slave
    output logic              spi_clk_i /*verilator clocker*/,
    input  logic              spi_clk_pad_tie0,
    input  logic              spi_clk_pad_tie1,
    input  logic              spi_clk_pad_OEN_1,
    input  logic              spi_clk_pad_I_0,
    output logic              spi_cs_i /*verilator clocker*/,
    input  logic              spi_cs_pad_tie0,
    input  logic              spi_cs_pad_tie1,
    input  logic              spi_cs_pad_OEN_1,
    input  logic              spi_cs_pad_I_0,
    input  logic              spi_sdo0_o,
    input  logic              spi_miso_pad_tie0,
    input  logic              spi_miso_pad_tie1,
    input  logic              spi_miso_pad_OEN_0,
    output logic              spi_sdi0_i,
    input  logic              spi_mosi_pad_tie0,
    input  logic              spi_mosi_pad_tie1,
    input  logic              spi_mosi_pad_OEN_1,
    input  logic              spi_mosi_pad_I_0,

    //SPI Master
    input  logic              spi_master_clk_o,
    input  logic              spi_master_clk_pad_tie0,
    input  logic              spi_master_clk_pad_tie1,
    input  logic              spi_master_clk_pad_OEN_0,
    input  logic              spi_master_csn0_o,
    input  logic              spi_master_csn0_pad_tie0,
    input  logic              spi_master_csn0_pad_tie1,
    input  logic              spi_master_csn0_pad_OEN_0,
    input  logic              spi_master_csn1_o,
    input  logic              spi_master_csn1_pad_tie0,
    input  logic              spi_master_csn1_pad_tie1,
    input  logic              spi_master_csn1_pad_OEN_0,
    input  logic              spi_master_csn2_o,
    input  logic              spi_master_csn2_pad_tie0,
    input  logic              spi_master_csn2_pad_tie1,
    input  logic              spi_master_csn2_pad_OEN_0,
    input  logic              spi_master_csn3_o,
    input  logic              spi_master_csn3_pad_tie0,
    input  logic              spi_master_csn3_pad_tie1,
    input  logic              spi_master_csn3_pad_OEN_0,
    input  logic              spi_master_sdo0_o,
    input  logic              spi_master_mosi_pad_tie0,
    input  logic              spi_master_mosi_pad_tie1,
    input  logic              spi_master_mosi_pad_OEN_0,
    output logic              spi_master_sdi0_i,
    input  logic              spi_master_miso_pad_tie0,
    input  logic              spi_master_miso_pad_tie1,
    input  logic              spi_master_miso_pad_OEN_1,
    input  logic              spi_master_miso_pad_I_0,

    output logic              scl_pad_i,
    input  logic              scl_pad_o,
    input  logic              scl_pad_tie0,
    input  logic              scl_pad_tie1,
    input  logic              scl_padoen_o,
    output logic              sda_pad_i,
    input  logic              sda_pad_o,
    input  logic              sda_pad_tie0,
    input  logic              sda_pad_tie1,
    input  logic              sda_padoen_o,

    input  logic              uart_tx,
    input  logic              uart_tx_pad_tie0,
    input  logic              uart_tx_pad_tie1,
    input  logic              uart_tx_pad_OEN_0,
    output logic              uart_rx,
    input  logic              uart_rx_pad_tie0,
    input  logic              uart_rx_pad_tie1,
    input  logic              uart_rx_pad_OEN_1,
    input  logic              uart_rx_pad_I_0,

    output logic       [20:0] gpio_in,
    input  logic       [20:0] gpio_out,
    input  logic       [20:0] gpio_pad_tie0,
    input  logic       [20:0] gpio_pad_tie1,
    input  logic       [20:0] gpio_pad_OEN,

    output logic        [7:0] upio_in,
    input  logic        [7:0] upio_out,
    input  logic        [7:0] upio_pad_tie0,
    input  logic        [7:0] upio_pad_tie1,
    input  logic        [7:0] upio_pad_OEN,

    // JTAG signals
    output logic              tck_i,
    input  logic              tck_pad_tie0,
    input  logic              tck_pad_tie1,
    input  logic              tck_pad_OEN_1,
    input  logic              tck_pad_I_0,
    output logic              trstn_i,
    input  logic              trstn_pad_tie0,
    input  logic              trstn_pad_tie1,
    input  logic              trstn_pad_OEN_1,
    input  logic              trstn_pad_I_0,
    output logic              tms_i,
    input  logic              tms_pad_tie0,
    input  logic              tms_pad_tie1,
    input  logic              tms_pad_OEN_1,
    input  logic              tms_pad_I_0,
    output logic              tdi_i,
    input  logic              tdi_pad_tie0,
    input  logic              tdi_pad_tie1,
    input  logic              tdi_pad_OEN_1,
    input  logic              tdi_pad_I_0,
    input  logic              tdo_o,
    input  logic              tdo_pad_tie0,
    input  logic              tdo_pad_tie1,
    input  logic              tdo_pad_OEN_0
  );

  pad_clk_in_h clk_pad_i              (.tie0(clk_pad_tie0),             .tie1(clk_pad_tie1),             .PAD(clk_pad),                                                                           .O(clk));
  pad_io_pd_h  rst_n_pad_i            (.tie0(rst_n_pad_tie0),           .tie1(rst_n_pad_tie1),           .PAD(rst_n_pad),           .OEN(rst_n_pad_OEN_1),           .I(rst_n_pad_I_0),           .O(rst_n));

  pad_io_pd_h  fetch_enable_pad_i     (.tie0(fetch_enable_pad_tie0),    .tie1(fetch_enable_pad_tie1),    .PAD(fetch_enable_pad),    .OEN(fetch_enable_pad_OEN_1),    .I(fetch_enable_pad_I_0),    .O(fetch_enable_i));

  // PULPino as slave
  pad_io_pd_v  spi_clk_pad_i          (.tie0(spi_clk_pad_tie0),         .tie1(spi_clk_pad_tie1),         .PAD(spi_clk_pad),         .OEN(spi_clk_pad_OEN_1),         .I(spi_clk_pad_I_0),         .O(spi_clk_i));
  pad_io_pd_v  spi_cs_pad_i           (.tie0(spi_cs_pad_tie0),          .tie1(spi_cs_pad_tie1),          .PAD(spi_cs_pad),          .OEN(spi_cs_pad_OEN_1),          .I(spi_cs_pad_I_0),          .O(spi_cs_i));
  // spi_mode_o is not used since only SPI is supported
  pad_io_pd_v  spi_miso_pad_i         (.tie0(spi_miso_pad_tie0),        .tie1(spi_miso_pad_tie1),        .PAD(spi_miso_pad),        .OEN(spi_miso_pad_OEN_0),        .I(spi_sdo0_o),              .O());
  pad_io_pd_v  spi_mosi_pad_i         (.tie0(spi_mosi_pad_tie0),        .tie1(spi_mosi_pad_tie1),        .PAD(spi_mosi_pad),        .OEN(spi_mosi_pad_OEN_1),        .I(spi_mosi_pad_I_0),        .O(spi_sdi0_i));

  // PULPino as master
  pad_io_pd_v  spi_master_clk_pad_i   (.tie0(spi_master_clk_pad_tie0),  .tie1(spi_master_clk_pad_tie1),  .PAD(spi_master_clk_pad ), .OEN(spi_master_clk_pad_OEN_0 ), .I(spi_master_clk_o ),       .O());
  pad_io_pd_h  spi_master_csn0_pad_i  (.tie0(spi_master_csn0_pad_tie0), .tie1(spi_master_csn0_pad_tie1), .PAD(spi_master_csn0_pad), .OEN(spi_master_csn0_pad_OEN_0), .I(spi_master_csn0_o),       .O());
  pad_io_pd_h  spi_master_csn1_pad_i  (.tie0(spi_master_csn1_pad_tie0), .tie1(spi_master_csn1_pad_tie1), .PAD(spi_master_csn1_pad), .OEN(spi_master_csn1_pad_OEN_0), .I(spi_master_csn1_o),       .O());
  pad_io_pd_v  spi_master_csn2_pad_i  (.tie0(spi_master_csn2_pad_tie0), .tie1(spi_master_csn2_pad_tie1), .PAD(spi_master_csn2_pad), .OEN(spi_master_csn2_pad_OEN_0), .I(spi_master_csn2_o),       .O());
  pad_io_pd_v  spi_master_csn3_pad_i  (.tie0(spi_master_csn3_pad_tie0), .tie1(spi_master_csn3_pad_tie1), .PAD(spi_master_csn3_pad), .OEN(spi_master_csn3_pad_OEN_0), .I(spi_master_csn3_o),       .O());
  // spi_master_mode_o is not used since only SPI is supported
  pad_io_pd_v  spi_master_miso_pad_i  (.tie0(spi_master_miso_pad_tie0), .tie1(spi_master_miso_pad_tie1), .PAD(spi_master_miso_pad), .OEN(spi_master_miso_pad_OEN_1), .I(spi_master_miso_pad_I_0), .O(spi_master_sdi0_i));
  pad_io_pd_v  spi_master_mosi_pad_i  (.tie0(spi_master_mosi_pad_tie0), .tie1(spi_master_mosi_pad_tie1), .PAD(spi_master_mosi_pad), .OEN(spi_master_mosi_pad_OEN_0), .I(spi_master_sdo0_o),       .O());

  pad_io_h     scl_pad_pad_i          (.tie0(scl_pad_tie0),             .tie1(scl_pad_tie1),             .PAD(scl_pad),             .OEN(scl_padoen_o),              .I(scl_pad_o),               .O(scl_pad_i));
  pad_io_h     sda_pad_pad_i          (.tie0(sda_pad_tie0),             .tie1(sda_pad_tie1),             .PAD(sda_pad),             .OEN(sda_padoen_o),              .I(sda_pad_o),               .O(sda_pad_i));

  pad_io_pd_h  uart_tx_pad_i          (.tie0(uart_tx_pad_tie0),         .tie1(uart_tx_pad_tie1),         .PAD(uart_tx_pad),         .OEN(uart_tx_pad_OEN_0),         .I(uart_tx),                 .O());
  pad_io_pd_h  uart_rx_pad_i          (.tie0(uart_rx_pad_tie0),         .tie1(uart_rx_pad_tie1),         .PAD(uart_rx_pad),         .OEN(uart_rx_pad_OEN_1),         .I(uart_rx_pad_I_0),         .O(uart_rx));

  pad_io_pd_h  gpio_pad_00_i          (.tie0(gpio_pad_tie0[0]),         .tie1(gpio_pad_tie1[0]),         .PAD(gpio_pad[0]),         .OEN(gpio_pad_OEN[0]),           .I(gpio_out[0]),             .O(gpio_in[0]));
  pad_io_pd_h  gpio_pad_01_i          (.tie0(gpio_pad_tie0[1]),         .tie1(gpio_pad_tie1[1]),         .PAD(gpio_pad[1]),         .OEN(gpio_pad_OEN[1]),           .I(gpio_out[1]),             .O(gpio_in[1]));
  pad_io_pd_h  gpio_pad_02_i          (.tie0(gpio_pad_tie0[2]),         .tie1(gpio_pad_tie1[2]),         .PAD(gpio_pad[2]),         .OEN(gpio_pad_OEN[2]),           .I(gpio_out[2]),             .O(gpio_in[2]));
  pad_io_pd_h  gpio_pad_03_i          (.tie0(gpio_pad_tie0[3]),         .tie1(gpio_pad_tie1[3]),         .PAD(gpio_pad[3]),         .OEN(gpio_pad_OEN[3]),           .I(gpio_out[3]),             .O(gpio_in[3]));
  pad_io_pd_h  gpio_pad_04_i          (.tie0(gpio_pad_tie0[4]),         .tie1(gpio_pad_tie1[4]),         .PAD(gpio_pad[4]),         .OEN(gpio_pad_OEN[4]),           .I(gpio_out[4]),             .O(gpio_in[4]));
  pad_io_pd_h  gpio_pad_05_i          (.tie0(gpio_pad_tie0[5]),         .tie1(gpio_pad_tie1[5]),         .PAD(gpio_pad[5]),         .OEN(gpio_pad_OEN[5]),           .I(gpio_out[5]),             .O(gpio_in[5]));
  pad_io_pd_h  gpio_pad_06_i          (.tie0(gpio_pad_tie0[6]),         .tie1(gpio_pad_tie1[6]),         .PAD(gpio_pad[6]),         .OEN(gpio_pad_OEN[6]),           .I(gpio_out[6]),             .O(gpio_in[6]));
  pad_io_pd_h  gpio_pad_07_i          (.tie0(gpio_pad_tie0[7]),         .tie1(gpio_pad_tie1[7]),         .PAD(gpio_pad[7]),         .OEN(gpio_pad_OEN[7]),           .I(gpio_out[7]),             .O(gpio_in[7]));
  pad_io_pd_h  gpio_pad_08_i          (.tie0(gpio_pad_tie0[8]),         .tie1(gpio_pad_tie1[8]),         .PAD(gpio_pad[8]),         .OEN(gpio_pad_OEN[8]),           .I(gpio_out[8]),             .O(gpio_in[8]));
  pad_io_pd_h  gpio_pad_09_i          (.tie0(gpio_pad_tie0[9]),         .tie1(gpio_pad_tie1[9]),         .PAD(gpio_pad[9]),         .OEN(gpio_pad_OEN[9]),           .I(gpio_out[9]),             .O(gpio_in[9]));
  pad_io_pd_v  gpio_pad_10_i          (.tie0(gpio_pad_tie0[10]),        .tie1(gpio_pad_tie1[10]),        .PAD(gpio_pad[10]),        .OEN(gpio_pad_OEN[10]),          .I(gpio_out[10]),            .O(gpio_in[10]));
  pad_io_pd_v  gpio_pad_11_i          (.tie0(gpio_pad_tie0[11]),        .tie1(gpio_pad_tie1[11]),        .PAD(gpio_pad[11]),        .OEN(gpio_pad_OEN[11]),          .I(gpio_out[11]),            .O(gpio_in[11]));
  pad_io_pd_v  gpio_pad_12_i          (.tie0(gpio_pad_tie0[12]),        .tie1(gpio_pad_tie1[12]),        .PAD(gpio_pad[12]),        .OEN(gpio_pad_OEN[12]),          .I(gpio_out[12]),            .O(gpio_in[12]));
  pad_io_pd_v  gpio_pad_13_i          (.tie0(gpio_pad_tie0[13]),        .tie1(gpio_pad_tie1[13]),        .PAD(gpio_pad[13]),        .OEN(gpio_pad_OEN[13]),          .I(gpio_out[13]),            .O(gpio_in[13]));
  pad_io_pd_v  gpio_pad_14_i          (.tie0(gpio_pad_tie0[14]),        .tie1(gpio_pad_tie1[14]),        .PAD(gpio_pad[14]),        .OEN(gpio_pad_OEN[14]),          .I(gpio_out[14]),            .O(gpio_in[14]));
  pad_io_pd_v  gpio_pad_15_i          (.tie0(gpio_pad_tie0[15]),        .tie1(gpio_pad_tie1[15]),        .PAD(gpio_pad[15]),        .OEN(gpio_pad_OEN[15]),          .I(gpio_out[15]),            .O(gpio_in[15]));
  pad_io_pd_v  gpio_pad_16_i          (.tie0(gpio_pad_tie0[16]),        .tie1(gpio_pad_tie1[16]),        .PAD(gpio_pad[16]),        .OEN(gpio_pad_OEN[16]),          .I(gpio_out[16]),            .O(gpio_in[16]));
  pad_io_pd_v  gpio_pad_17_i          (.tie0(gpio_pad_tie0[17]),        .tie1(gpio_pad_tie1[17]),        .PAD(gpio_pad[17]),        .OEN(gpio_pad_OEN[17]),          .I(gpio_out[17]),            .O(gpio_in[17]));
  pad_io_pd_v  gpio_pad_18_i          (.tie0(gpio_pad_tie0[18]),        .tie1(gpio_pad_tie1[18]),        .PAD(gpio_pad[18]),        .OEN(gpio_pad_OEN[18]),          .I(gpio_out[18]),            .O(gpio_in[18]));
  pad_io_pd_v  gpio_pad_19_i          (.tie0(gpio_pad_tie0[19]),        .tie1(gpio_pad_tie1[19]),        .PAD(gpio_pad[19]),        .OEN(gpio_pad_OEN[19]),          .I(gpio_out[19]),            .O(gpio_in[19]));
  pad_io_pd_h  gpio_pad_20_i          (.tie0(gpio_pad_tie0[20]),        .tie1(gpio_pad_tie1[20]),        .PAD(gpio_pad[20]),        .OEN(gpio_pad_OEN[20]),          .I(gpio_out[20]),            .O(gpio_in[20]));

  pad_io_pd_h  upio_pad_0_i           (.tie0(upio_pad_tie0[0]),         .tie1(upio_pad_tie1[0]),         .PAD(upio_pad[0]),         .OEN(upio_pad_OEN[0]),           .I(upio_out[0]),             .O(upio_in[0]));
  pad_io_pd_h  upio_pad_1_i           (.tie0(upio_pad_tie0[1]),         .tie1(upio_pad_tie1[1]),         .PAD(upio_pad[1]),         .OEN(upio_pad_OEN[1]),           .I(upio_out[1]),             .O(upio_in[1]));
  pad_io_pd_h  upio_pad_2_i           (.tie0(upio_pad_tie0[2]),         .tie1(upio_pad_tie1[2]),         .PAD(upio_pad[2]),         .OEN(upio_pad_OEN[2]),           .I(upio_out[2]),             .O(upio_in[2]));
  pad_io_pd_h  upio_pad_3_i           (.tie0(upio_pad_tie0[3]),         .tie1(upio_pad_tie1[3]),         .PAD(upio_pad[3]),         .OEN(upio_pad_OEN[3]),           .I(upio_out[3]),             .O(upio_in[3]));
  pad_io_pd_v  upio_pad_4_i           (.tie0(upio_pad_tie0[4]),         .tie1(upio_pad_tie1[4]),         .PAD(upio_pad[4]),         .OEN(upio_pad_OEN[4]),           .I(upio_out[4]),             .O(upio_in[4]));
  pad_io_pd_v  upio_pad_5_i           (.tie0(upio_pad_tie0[5]),         .tie1(upio_pad_tie1[5]),         .PAD(upio_pad[5]),         .OEN(upio_pad_OEN[5]),           .I(upio_out[5]),             .O(upio_in[5]));
  pad_io_pd_v  upio_pad_6_i           (.tie0(upio_pad_tie0[6]),         .tie1(upio_pad_tie1[6]),         .PAD(upio_pad[6]),         .OEN(upio_pad_OEN[6]),           .I(upio_out[6]),             .O(upio_in[6]));
  pad_io_pd_v  upio_pad_7_i           (.tie0(upio_pad_tie0[7]),         .tie1(upio_pad_tie1[7]),         .PAD(upio_pad[7]),         .OEN(upio_pad_OEN[7]),           .I(upio_out[7]),             .O(upio_in[7]));

  pad_io_pd_v  tck_pad_i              (.tie0(tck_pad_tie0),             .tie1(tck_pad_tie1),             .PAD(tck_pad),             .OEN(tck_pad_OEN_1),             .I(tck_pad_I_0),             .O(tck_i));
  pad_io_pd_v  trstn_pad_i            (.tie0(trstn_pad_tie0),           .tie1(trstn_pad_tie1),           .PAD(trstn_pad),           .OEN(trstn_pad_OEN_1),           .I(trstn_pad_I_0),           .O(trstn_i));
  pad_io_pd_v  tms_pad_i              (.tie0(tms_pad_tie0),             .tie1(tms_pad_tie1),             .PAD(tms_pad),             .OEN(tms_pad_OEN_1),             .I(tms_pad_I_0),             .O(tms_i));
  pad_io_pd_v  tdi_pad_i              (.tie0(tdi_pad_tie0),             .tie1(tdi_pad_tie1),             .PAD(tdi_pad),             .OEN(tdi_pad_OEN_1),             .I(tdi_pad_I_0),             .O(tdi_i));
  pad_io_pd_v  tdo_pad_i              (.tie0(tdo_pad_tie0),             .tie1(tdo_pad_tie1),             .PAD(tdo_pad),             .OEN(tdo_pad_OEN_0),             .I(tdo_o),                   .O());

endmodule
