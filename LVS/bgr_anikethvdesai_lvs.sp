* SPICE netlist for BGR LVS Alignment

.subckt bgr vdd vref gnd

** 1. MOSFET Definitions **
xmp1  net1  net2  vdd  vdd  sky130_fd_pr__pfet_01v8_lvt  l=2  w=5  m=4
xmp2  net2  net2  vdd  vdd  sky130_fd_pr__pfet_01v8_lvt  l=2  w=5  m=4
xmp3  vref  net2  vdd  vdd  sky130_fd_pr__pfet_01v8_lvt  l=2  w=5  m=4
xmn1  net1  net1  qp1  gnd  sky130_fd_pr__nfet_01v8_lvt  l=1  w=5  m=8
xmn2  net2  net1  rp1  gnd  sky130_fd_pr__nfet_01v8_lvt  l=1  w=5  m=8
xmp4  net4  net2  vdd  vdd  sky130_fd_pr__pfet_01v8_lvt  l=2  w=5  m=1
xmp5  net6  net2  net4 vdd  sky130_fd_pr__pfet_01v8_lvt  l=2  w=5  m=1
xmp6  net1  net6  net2 vdd  sky130_fd_pr__pfet_01v8_lvt  l=2  w=5  m=2
xmn3  net6  net6  net8 gnd  sky130_fd_pr__nfet_01v8_lvt  l=7  w=1  m=1
xmn4  net8  net8  gnd  gnd  sky130_fd_pr__nfet_01v8_lvt  l=7  w=1  m=1

** 2. BJT Definitions **
xqp1  gnd   gnd   qp1        sky130_fd_pr__pnp_05v5_W3p40L3p40  m=1
xqp2  gnd   gnd   qp2        sky130_fd_pr__pnp_05v5_W3p40L3p40  m=8
xqp3  gnd   gnd   qp3        sky130_fd_pr__pnp_05v5_W3p40L3p40  m=1

** 3. High-Poly Resistance Definitions (Bulk Substrate = GND) **
xra1  rp1   na1   gnd sky130_fd_pr__res_high_po_1p41  w=1.41  l=7.8
xra2  na1   na2   gnd sky130_fd_pr__res_high_po_1p41  w=1.41  l=7.8
xra3  na2   qp2   gnd sky130_fd_pr__res_high_po_1p41  w=1.41  l=7.8
xra4  na2   qp2   gnd sky130_fd_pr__res_high_po_1p41  w=1.41  l=7.8

xrb1  vref  nb1   gnd sky130_fd_pr__res_high_po_1p41  w=1.41  l=7.8
xrb2  nb1   nb2   gnd sky130_fd_pr__res_high_po_1p41  w=1.41  l=7.8
xrb3  nb2   nb3   gnd sky130_fd_pr__res_high_po_1p41  w=1.41  l=7.8
xrb4  nb3   nb4   gnd sky130_fd_pr__res_high_po_1p41  w=1.41  l=7.8
xrb5  nb4   nb5   gnd sky130_fd_pr__res_high_po_1p41  w=1.41  l=7.8
xrb6  nb5   nb6   gnd sky130_fd_pr__res_high_po_1p41  w=1.41  l=7.8
xrb7  nb6   nb7   gnd sky130_fd_pr__res_high_po_1p41  w=1.41  l=7.8
xrb8  nb7   nb8   gnd sky130_fd_pr__res_high_po_1p41  w=1.41  l=7.8
xrb9  nb8   nb9   gnd sky130_fd_pr__res_high_po_1p41  w=1.41  l=7.8
xrb10 nb9   nb10  gnd sky130_fd_pr__res_high_po_1p41  w=1.41  l=7.8
xrb11 nb10  nb11  gnd sky130_fd_pr__res_high_po_1p41  w=1.41  l=7.8
xrb12 nb11  nb12  gnd sky130_fd_pr__res_high_po_1p41  w=1.41  l=7.8
xrb13 nb12  nb13  gnd sky130_fd_pr__res_high_po_1p41  w=1.41  l=7.8
xrb14 nb13  nb14  gnd sky130_fd_pr__res_high_po_1p41  w=1.41  l=7.8
xrb15 nb14  nb15  gnd sky130_fd_pr__res_high_po_1p41  w=1.41  l=7.8
xrb16 nb15  nb16  gnd sky130_fd_pr__res_high_po_1p41  w=1.41  l=7.8
xrb17 nb16  qp3   gnd sky130_fd_pr__res_high_po_1p41  w=1.41  l=7.8
xrb18 nb16  qp3   gnd sky130_fd_pr__res_high_po_1p41  w=1.41  l=7.8

.ends bgr