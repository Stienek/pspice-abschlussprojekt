*version 9.1 377498572
u 142
V? 11
U? 3
Q? 2
R? 6
C? 2
? 23
PM? 3
@libraries
@analysis
.DC 1 0 0 0 1 1
+ 0 0 V6
+ 0 4 -4
+ 0 5 4
+ 0 6 500m
+ 0 7 -4,-2,0,2,4
.TRAN 1 0 0 0
+0 0
+1 3
+2 0
+3 100u
.STEP 0 0 0
+ 0 V6
+ 4 -4
+ 5 4
+ 6 500m
+ -1 -2,0,2,4
@targets
@attributes
@translators
a 0 u 13 0 0 0 hln 100 PCBOARDS=PCB
a 0 u 13 0 0 0 hln 100 PSPICE=PSPICE
a 0 u 13 0 0 0 hln 100 XILINX=XILINX
@setup
unconnectedPins 0
connectViaLabel 0
connectViaLocalLabels 0
NoStim4ExtIFPortsWarnings 1
AutoGenStim4ExtIFPorts 1
@index
pageloc 1 0 7607 
@status
n 0 123:00:26:11:25:48;1674728748 e 
s 2832 123:00:26:11:26:15;1674728775 e 
*page 1 0 970 720 iA
@ports
port 23 AGND 710 240 h
port 22 AGND 600 270 h
port 20 AGND 490 290 h
port 19 AGND 270 230 h
port 21 AGND 340 210 h
port 18 AGND 140 110 h
port 17 AGND 90 110 h
port 16 AGND 40 110 h
port 24 BUBBLE 40 50 h
a 1 x 3 0 0 0 hcn 100 LABEL=8
port 30 BUBBLE 90 50 h
a 1 x 3 0 0 0 hcn 100 LABEL=-8
port 31 BUBBLE 140 50 h
a 1 x 3 0 0 0 hcn 100 LABEL=12
port 25 BUBBLE 390 150 h
a 1 x 3 0 0 0 hcn 100 LABEL=-8
port 29 BUBBLE 390 210 u
a 1 x 3 0 0 0 hcn 100 LABEL=8
port 26 BUBBLE 550 170 h
a 1 x 3 0 0 0 hcn 100 LABEL=-8
port 28 BUBBLE 550 230 u
a 1 x 3 0 0 0 hcn 100 LABEL=8
port 27 BUBBLE 710 120 h
a 1 x 3 0 0 0 hcn 100 LABEL=12
@parts
part 6 Q2N6059 670 200 h
a 0 sp 11 0 0 60 hln 100 PART=Q2N6059
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=Q1
a 0 ap 9 0 -1 -3 hln 100 REFDES=Q1
part 13 VDC 40 60 h
a 1 u 13 0 -11 18 hcn 100 DC=8
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V3
a 1 ap 9 0 24 7 hcn 100 REFDES=V3
part 14 VDC 90 60 h
a 1 u 13 0 -11 18 hcn 100 DC=-8
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V4
a 1 ap 9 0 24 7 hcn 100 REFDES=V4
part 15 VDC 140 60 h
a 1 u 13 0 -11 18 hcn 100 DC=12
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V5
a 1 ap 9 0 24 7 hcn 100 REFDES=V5
part 116 PARAM 300 20 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=PM1
a 1 ap 0 0 10 -2 hcn 100 REFDES=PM1
a 0 u 13 0 50 32 hlb 100 VALUE2=50
a 0 u 13 0 0 20 hln 100 NAME1=f1
a 0 u 13 0 0 30 hln 100 NAME2=pw
a 0 u 13 0 50 22 hlb 100 VALUE1=50
a 0 u 13 0 0 40 hln 100 NAME3=
a 0 u 13 0 50 42 hlb 100 VALUE3=
part 5 LM324 510 220 U
a 0 sp 11 0 14 70 hcn 100 PART=LM324
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U2
a 0 ap 9 0 56 8 hcn 100 REFDES=U2A
part 4 LM324 350 200 U
a 0 sp 11 0 14 70 hcn 100 PART=LM324
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U1
a 0 ap 9 0 56 8 hcn 100 REFDES=U1A
part 8 r 450 180 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 15 0 hln 100 REFDES=R2
part 12 c 410 100 u
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 u 13 0 20 0 hln 100 VALUE=10u
a 0 ap 9 0 20 30 hln 100 REFDES=C1
a 0 u 0 0 0 0 hln 100 IC=4
part 7 r 290 160 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
part 2 VPULSE 270 180 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 20 10 hcn 100 REFDES=V1
a 1 u 0 0 0 0 hcn 100 TD=0
a 1 u 0 0 0 0 hcn 100 TR=1n
a 1 u 0 0 0 0 hcn 100 TF=1n
a 1 u 0 0 0 0 hcn 100 AC=0
a 1 u 0 0 0 0 hcn 100 DC=0
a 1 u 0 0 0 0 hcn 100 V1=-8
a 1 u 0 0 0 0 hcn 100 V2=8
a 1 u 0 0 0 0 hcn 100 PW={(pw/100)*(1/f1)}
a 1 u 0 0 0 0 hcn 100 PER={1/f1}
part 10 r 600 220 d
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R4
a 0 ap 9 0 15 0 hln 100 REFDES=R4
part 9 r 620 200 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R3
a 0 ap 9 0 15 0 hln 100 REFDES=R3
part 11 r 710 130 d
a 0 u 13 0 15 25 hln 100 VALUE=6
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R5
a 0 ap 9 0 15 0 hln 100 REFDES=R5
part 141 VDC 490 240 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 x 0:13 0 0 0 hln 100 PKGREF=V6
a 1 xp 9 0 24 7 hcn 100 REFDES=V6
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 51
a 0 up 0:33 0 0 0 hln 100 V=
s 710 230 710 240 50
a 0 up 33 0 712 235 hlt 100 V=
w 59
a 0 up 0:33 0 0 0 hln 100 V=
s 600 260 600 270 58
a 0 up 33 0 602 265 hlt 100 V=
w 67
a 0 up 0:33 0 0 0 hln 100 V=
s 510 180 490 180 66
a 0 up 33 0 500 179 hct 100 V=
w 92
s 340 210 340 200 91
s 340 200 350 200 93
w 96
a 0 up 0:33 0 0 0 hln 100 V=
s 140 110 140 100 95
a 0 up 33 0 142 105 hlt 100 V=
w 98
a 0 up 0:33 0 0 0 hln 100 V=
s 90 110 90 100 97
a 0 up 33 0 92 105 hlt 100 V=
w 100
a 0 up 0:33 0 0 0 hln 100 V=
s 40 110 40 100 99
a 0 up 33 0 42 105 hlt 100 V=
w 102
a 0 up 0:33 0 0 0 hln 100 V=
s 40 60 40 50 101
a 0 up 33 0 42 55 hlt 100 V=
w 104
a 0 up 0:33 0 0 0 hln 100 V=
s 90 50 90 60 103
a 0 up 33 0 92 55 hlt 100 V=
w 106
a 0 up 0:33 0 0 0 hln 100 V=
s 140 50 140 60 105
a 0 up 33 0 142 55 hlt 100 V=
w 49
a 0 sr 0 0 0 0 hln 100 LABEL=out
a 0 up 0:33 0 0 0 hln 100 V=
s 710 170 710 180 48
a 0 sr 3 0 712 175 hln 100 LABEL=out
a 0 up 33 0 712 176 hlt 100 V=
w 53
a 0 sr 0 0 0 0 hln 100 LABEL=inT
a 0 up 0:33 0 0 0 hln 100 V=
s 670 200 660 200 52
a 0 sr 3 0 665 198 hcn 100 LABEL=inT
a 0 up 33 0 665 199 hct 100 V=
w 77
a 0 up 0:33 0 0 0 hln 100 V=
s 330 160 340 160 76
s 340 160 350 160 80
s 340 160 340 100 78
a 0 up 33 0 342 130 hlt 100 V=
s 340 100 380 100 117
w 84
a 0 sr 0 0 0 0 hln 100 LABEL=op1
a 0 up 0:33 0 0 0 hln 100 V=
s 440 180 430 180 87
a 0 sr 3 0 435 178 hcn 100 LABEL=op1
a 0 up 33 0 435 179 hct 100 V=
s 440 100 440 180 85
s 440 180 450 180 89
s 410 100 440 100 119
w 71
a 0 up 0:33 0 0 0 hln 100 V=
s 270 230 270 220 70
a 0 up 33 0 272 225 hlt 100 V=
w 73
a 0 sr 0 0 0 0 hln 100 LABEL=in1
a 0 up 0:33 0 0 0 hln 100 V=
s 270 160 290 160 74
a 0 sr 3 0 280 158 hcn 100 LABEL=in1
a 0 up 33 0 280 159 hct 100 V=
s 270 180 270 160 72
w 55
a 0 sr 0 0 0 0 hln 100 LABEL=op2
a 0 up 0:33 0 0 0 hln 100 V=
s 620 200 600 200 54
a 0 sr 3 0 610 198 hcn 100 LABEL=op2
a 0 up 33 0 610 199 hct 100 V=
s 600 200 600 220 56
s 590 200 600 200 68
w 47
a 0 up 0:33 0 0 0 hln 100 V=
s 710 120 710 130 46
a 0 up 33 0 712 125 hlt 100 V=
w 63
a 0 sr 0 0 0 0 hln 100 LABEL=in2
a 0 up 0:33 0 0 0 hln 100 V=
s 490 220 510 220 64
a 0 sr 3 0 500 218 hcn 100 LABEL=in2
a 0 up 33 0 500 219 hct 100 V=
s 490 240 490 220 62
w 61
a 0 up 0:33 0 0 0 hln 100 V=
s 490 290 490 280 60
a 0 up 33 0 492 285 hlt 100 V=
@junction
j 710 130
+ p 11 1
+ w 47
j 710 120
+ s 27
+ w 47
j 710 180
+ p 6 c
+ w 49
j 710 170
+ p 11 2
+ w 49
j 710 230
+ p 6 e
+ w 51
j 710 240
+ s 23
+ w 51
j 660 200
+ p 9 2
+ w 53
j 670 200
+ p 6 b
+ w 53
j 620 200
+ p 9 1
+ w 55
j 600 220
+ p 10 1
+ w 55
j 600 260
+ p 10 2
+ w 59
j 600 270
+ s 22
+ w 59
j 550 170
+ p 5 V-
+ s 26
j 550 230
+ p 5 V+
+ s 28
j 490 290
+ s 20
+ w 61
j 510 220
+ p 5 +
+ w 63
j 490 180
+ p 8 2
+ w 67
j 510 180
+ p 5 -
+ w 67
j 590 200
+ p 5 OUT
+ w 55
j 600 200
+ w 55
+ w 55
j 390 150
+ p 4 V-
+ s 25
j 390 210
+ p 4 V+
+ s 29
j 270 230
+ s 19
+ w 71
j 290 160
+ p 7 1
+ w 73
j 350 160
+ p 4 -
+ w 77
j 330 160
+ p 7 2
+ w 77
j 340 160
+ w 77
+ w 77
j 140 100
+ p 15 -
+ w 96
j 140 110
+ s 18
+ w 96
j 90 100
+ p 14 -
+ w 98
j 90 110
+ s 17
+ w 98
j 40 100
+ p 13 -
+ w 100
j 40 110
+ s 16
+ w 100
j 40 60
+ p 13 +
+ w 102
j 40 50
+ s 24
+ w 102
j 90 60
+ p 14 +
+ w 104
j 90 50
+ s 30
+ w 104
j 140 60
+ p 15 +
+ w 106
j 140 50
+ s 31
+ w 106
j 430 180
+ p 4 OUT
+ w 84
j 450 180
+ p 8 1
+ w 84
j 440 180
+ w 84
+ w 84
j 380 100
+ p 12 2
+ w 77
j 410 100
+ p 12 1
+ w 84
j 270 220
+ p 2 -
+ w 71
j 270 180
+ p 2 +
+ w 73
j 340 210
+ s 21
+ w 92
j 350 200
+ p 4 +
+ w 92
j 490 240
+ p 141 +
+ w 63
j 490 280
+ p 141 -
+ w 61
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
