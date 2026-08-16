**** Bandgap Reference Circuit (BGR) using Self-Biased Current Mirror (SBCM) ****

.lib "/opt/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice" tt

.global vdd gnd
.temp 27



*** CIRCUIT DEFINITIONS ***

** 1. MOSFET Definitions **
xmp1	  net1	  net2	  vdd	    vdd	    sky130_fd_pr__pfet_01v8_lvt	    l=2	    w=5	    m=4   $ SBCM Stage
xmp2    net2    net2    vdd     vdd     sky130_fd_pr__pfet_01v8_lvt     l=2     w=5     m=4   $ SBCM Stage
xmp3    net3    net2    vdd     vdd     sky130_fd_pr__pfet_01v8_lvt     l=2     w=5     m=4   $ Output Stage
xmn1    net1    net1    q1      gnd     sky130_fd_pr__nfet_01v8_lvt     l=1     w=5     m=8   $ SBCM Stage
xmn2    net2    net1    q2      gnd     sky130_fd_pr__nfet_01v8_lvt     l=1     w=5     m=8   $ SBCM Stage
xmp4    net4    net2    vdd     vdd     sky130_fd_pr__pfet_01v8_lvt     l=2     w=5     m=1   $ Start-Up Stage
xmp5    net5    net2    net4    vdd     sky130_fd_pr__pfet_01v8_lvt     l=2     w=5     m=1   $ Start-Up Stage
xmp6    net7    net6    net2    vdd     sky130_fd_pr__pfet_01v8_lvt     l=2     w=5     m=2   $ Start-Up Stage
xmn3    net6    net6    net8    gnd     sky130_fd_pr__nfet_01v8_lvt     l=7     w=1     m=1   $ Start-Up Stage
xmn4    net8    net8    gnd     gnd     sky130_fd_pr__nfet_01v8_lvt     l=7     w=1     m=1   $ Start-Up Stage

** 2. BJT Definitions **
xqp1	gnd	    gnd	    qp1	         sky130_fd_pr__pnp_05v5_W3p40L3p40	     m=1 $ CTAT Stage
xqp2    gnd     gnd     qp2          sky130_fd_pr__pnp_05v5_W3p40L3p40       m=8 $ PTAT Stage
xqp3    gnd     gnd     qp3          sky130_fd_pr__pnp_05v5_W3p40L3p40       m=1 $ Output Stage

** 3. High-Poly Resistance Definitions **
xra1	ra1	    na1	    vdd	    sky130_fd_pr__res_high_po_1p41     w=1.41  l=7.8
xra2	na1     na2     vdd     sky130_fd_pr__res_high_po_1p41     w=1.41  l=7.8
xra3    na2     qp2     vdd     sky130_fd_pr__res_high_po_1p41     w=1.41  l=7.8
xra4    na2     qp2     vdd     sky130_fd_pr__res_high_po_1p41     w=1.41  l=7.8

xrb1    vref    nb1     vdd     sky130_fd_pr__res_high_po_1p41     w=1.41  l=7.8
xrb2    nb1     nb2     vdd     sky130_fd_pr__res_high_po_1p41     w=1.41  l=7.8
xrb3    nb2     nb3     vdd     sky130_fd_pr__res_high_po_1p41     w=1.41  l=7.8
xrb4    nb3     nb4     vdd     sky130_fd_pr__res_high_po_1p41     w=1.41  l=7.8
xrb5    nb4     nb5     vdd     sky130_fd_pr__res_high_po_1p41     w=1.41  l=7.8
xrb6    nb5     nb6     vdd     sky130_fd_pr__res_high_po_1p41     w=1.41  l=7.8
xrb7    nb6     nb7     vdd     sky130_fd_pr__res_high_po_1p41     w=1.41  l=7.8
xrb8    nb7     nb8     vdd     sky130_fd_pr__res_high_po_1p41     w=1.41  l=7.8
xrb9    nb8     nb9     vdd     sky130_fd_pr__res_high_po_1p41     w=1.41  l=7.8
xrb10   nb9     nb10    vdd     sky130_fd_pr__res_high_po_1p41     w=1.41  l=7.8
xrb11   nb10    nb11    vdd     sky130_fd_pr__res_high_po_1p41     w=1.41  l=7.8
xrb12   nb11    nb12    vdd     sky130_fd_pr__res_high_po_1p41     w=1.41  l=7.8
xrb13   nb12    nb13    vdd     sky130_fd_pr__res_high_po_1p41     w=1.41  l=7.8
xrb14   nb13    nb14    vdd     sky130_fd_pr__res_high_po_1p41     w=1.41  l=7.8
xrb15   nb14    nb15    vdd     sky130_fd_pr__res_high_po_1p41     w=1.41  l=7.8
xrb16   nb15    nb16    vdd     sky130_fd_pr__res_high_po_1p41     w=1.41  l=7.8
xrb17   nb16    qp3   	vdd     sky130_fd_pr__res_high_po_1p41     w=1.41  l=7.8
xrb18   nb16    qp3     vdd     sky130_fd_pr__res_high_po_1p41     w=1.41  l=7.8

** 4. Voltage Source for Current Measurement **
vid1	q1	    qp1	    dc	0
vid2    q2      ra1     dc  0
vid3    net3    vref    dc  0
vid4    net7	net1	dc	0
vid5	net5	net6	dc	0





*** ANALYSIS/SIMULATION (Uncomment one block for testing) ***


** 1. Temp Sweep (vsup dc 2 below)

*vsup vdd gnd dc 2
*.dc temp -40 125 5       


** 2. Transient

*vsup vdd gnd pulse(0 2 10n 1u 1u 1m 100u)       
*.tran 5n 10u


** 3. Line Regulation

vsup vdd gnd dc 2                                
.dc vsup 0 3.3 0.01


.control
  run
  plot v(vref)
.endc