<Qucs Schematic 25.2.0>
<Properties>
  <View=327,102,2202,848,1.65959,0,0>
  <Grid=10,10,1>
  <DataSet=Ref_C-Pump-Out_to_V-Tune_Filter.dat>
  <DataDisplay=Ref_C-Pump-Out_to_V-Tune_Filter.dpl>
  <OpenDisplay=0>
  <Script=Ref_C-Pump-Out_to_V-Tune_Filter.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <C C1 1 790 480 17 -26 0 1 "1 nF" 1 "" 0 "neutral" 0>
  <R R1 1 970 400 -26 15 0 0 "1 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R2 1 880 480 15 -26 0 1 "1 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <C C2 1 880 540 17 -26 0 1 "1 nF" 1 "" 0 "neutral" 0>
  <C C3 1 1050 480 17 -26 0 1 "1 nF" 1 "" 0 "neutral" 0>
  <GND * 1 790 510 0 0 0 0>
  <GND * 1 880 570 0 0 0 0>
  <GND * 1 1050 510 0 0 0 0>
  <Pac P1 1 670 480 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <Pac P2 1 1140 480 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <GND * 1 670 510 0 0 0 0>
  <GND * 1 1140 510 0 0 0 0>
  <.SP SP1 1 530 330 0 54 0 0 "log" 1 "1 Hz" 1 "10 MHz" 1 "50000" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
</Components>
<Wires>
  <880 400 940 400 "" 0 0 0 "">
  <880 400 880 450 "" 0 0 0 "">
  <790 400 880 400 "" 0 0 0 "">
  <790 400 790 450 "" 0 0 0 "">
  <1000 400 1050 400 "" 0 0 0 "">
  <670 400 790 400 "" 0 0 0 "">
  <670 400 670 450 "" 0 0 0 "">
  <1050 400 1140 400 "" 0 0 0 "">
  <1050 400 1050 450 "" 0 0 0 "">
  <1140 400 1140 450 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 1360 480 240 160 3 #c0c0c0 1 11 1 1e+06 1 1e+10 1 1e-08 1 0.1 1 -1 1 1 315 0 225 1 1 0 "" "" "">
	<"ngspice/ac.s_2_1" #aa00ff 0 3 0 0 0>
	<"ngspice/ac.s_1_2" #ff00ff 1 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
