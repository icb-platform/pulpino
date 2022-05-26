// Copyright 2021 IC Bench,Inc.
// Solderpad Hardware License, Version 0.51, see LICENSE for details.
// SPDX-License-Identifier: SHL-0.51

// *_h: horizontal direction, 
//      should be placed at the left and right sides of the chip.
// *_v: vertical direction, 
//      should be placed at the bottom and top sides of the chip.

module _pad_io_pd
(
  input  logic tie0,
  input  logic tie1,
  inout  logic PAD,
  input  logic OEN,
  input  logic I,
  output logic O
);

/*  
  tie0: must be connected to logic 0
  tie1: must be connected to logic 1
  x: any value

     Input           | Output
  OEN  I      PAD    | PAD  O
   1   x       0        -   0
   1   x       1        -   1
   1   x   pull down    -   0
   0   0       -        0   0
   0   1       -        1   1
 */ 
  
  supply0 zero;
  bufif0 (PAD, I, OEN);
  buf    (O, PAD);
  rpmos  (PAD, zero, zero);

endmodule

module pad_io_pd_h
(
  input  logic tie0,
  input  logic tie1,
  inout  logic PAD,
  input  logic OEN,
  input  logic I,
  output logic O
);

 _pad_io_pd pad(
   .tie0(tie0),
   .tie1(tie1),
   .PAD (PAD ),
   .OEN (OEN ),
   .I   (I   ),
   .O   (O   )
 );

endmodule

module pad_io_pd_v
(
  input  logic tie0,
  input  logic tie1,
  inout  logic PAD,
  input  logic OEN,
  input  logic I,
  output logic O
);

 _pad_io_pd pad(
   .tie0(tie0),
   .tie1(tie1),
   .PAD (PAD ),
   .OEN (OEN ),
   .I   (I   ),
   .O   (O   )
 );

endmodule


module _pad_io
(
  input  tie0,
  input  tie1,
  inout  logic PAD,
  input  logic OEN,
  input  logic I,
  output logic O
);

/*  
  tie0: must be connected to logic 0
  tie1: must be connected to logic 1
  x: any value

     Input           | Output
  OEN  I      PAD    | PAD  O
   1   x       0        -   0
   1   x       1        -   1
   1   x       z        -   x
   0   0       -        0   0
   0   1       -        1   1
 */ 
  
  bufif0 (PAD, I, OEN);
  buf    (O, PAD);

endmodule

module pad_io_h
(
  input  tie0,
  input  tie1,
  inout  logic PAD,
  input  logic OEN,
  input  logic I,
  output logic O
);

  _pad_io pad(
   .tie0(tie0),
   .tie1(tie1),
   .PAD (PAD ),
   .OEN (OEN ),
   .I   (I   ),
   .O   (O   )
  );

endmodule

module pad_io_v
(
  input  tie0,
  input  tie1,
  inout  logic PAD,
  input  logic OEN,
  input  logic I,
  output logic O
);

  _pad_io pad(
   .tie0(tie0),
   .tie1(tie1),
   .PAD (PAD ),
   .OEN (OEN ),
   .I   (I   ),
   .O   (O   )
  );

endmodule


module _pad_clk_in
(
  input  logic tie0,
  input  logic tie1,
  input  logic PAD,
  output logic O
);
/*  
  tie0: must be connected to logic 0
  tie1: must be connected to logic 1
  x: any value

     Input   | Output
      PAD    |   O
       0         0
       1         1
 */ 
  buf (O, PAD);

endmodule

module pad_clk_in_h
(
  input  logic tie0,
  input  logic tie1,
  input  logic PAD,
  output logic O
);

  _pad_clk_in pad(
    .tie0(tie0),
    .tie1(tie1),
    .PAD (PAD ),
    .O   (O   )
  );

endmodule

module pad_clk_in_v
(
  input  logic tie0,
  input  logic tie1,
  input  logic PAD,
  output logic O
);

  _pad_clk_in pad(
    .tie0(tie0),
    .tie1(tie1),
    .PAD (PAD ),
    .O   (O   )
  );

endmodule
