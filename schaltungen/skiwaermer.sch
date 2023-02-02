*version 9.1 1016678449
u 160
V? 15
U? 3
Q? 2
R? 6
C? 2
? 23
PM? 3
@libraries
@analysis
.DC 0 0 0 0 1 1
+ 0 0 V6
+ 0 4 -4
+ 0 5 4
+ 0 6 2000m
+ 0 7 -4,-2,0,2,4
.TRAN 1 0 0 0
+0 0
+1 500m
+2 0
+3 100u
.STEP 0 0 0
+ 0 V12
+ 4 -4
+ 5 4
+ 6 2000m
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
pageloc 1 0 7737 
@status
n 0 123:01:01:09:32:11;1675240331 e 
s 0 123:01:01:09:31:39;1675240299 e 
c 123:01:01:09:32:08;1675240328
*page 1 0 970 720 iA
@ports
port 18 AGND 140 110 h
port 17 AGND 90 110 h
port 16 AGND 40 110 h
port 24 BUBBLE 40 50 h
a 1 x 3 0 0 0 hcn 100 LABEL=8
port 30 BUBBLE 90 50 h
a 1 x 3 0 0 0 hcn 100 LABEL=-8
port 31 BUBBLE 140 50 h
a 1 x 3 0 0 0 hcn 100 LABEL=12
port 23 AGND 630 250 h
port 22 AGND 520 280 h
port 19 AGND 190 240 h
port 21 AGND 260 220 h
port 25 BUBBLE 310 160 h
a 1 x 3 0 0 0 hcn 100 LABEL=-8
port 29 BUBBLE 310 220 u
a 1 x 3 0 0 0 hcn 100 LABEL=8
port 26 BUBBLE 470 180 h
a 1 x 3 0 0 0 hcn 100 LABEL=-8
port 28 BUBBLE 470 240 u
a 1 x 3 0 0 0 hcn 100 LABEL=8
port 27 BUBBLE 630 130 h
a 1 x 3 0 0 0 hcn 100 LABEL=12
port 20 AGND 410 300 h
@parts
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
part 6 Q2N6059 590 210 h
a 0 sp 11 0 0 60 hln 100 PART=Q2N6059
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=Q1
a 0 ap 9 0 -1 -3 hln 100 REFDES=Q1
part 116 PARAM 220 30 h
a 0 a 0:13 0 0 0 hln 100 PKGREF=PM1
a 1 ap 0 0 10 -2 hcn 100 REFDES=PM1
a 0 u 13 0 50 32 hlb 100 VALUE2=50
a 0 u 13 0 0 20 hln 100 NAME1=f1
a 0 u 13 0 0 30 hln 100 NAME2=pw
a 0 u 13 0 50 22 hlb 100 VALUE1=50
a 0 u 13 0 0 40 hln 100 NAME3=
a 0 u 13 0 50 42 hlb 100 VALUE3=
part 5 LM324 430 230 U
a 0 sp 11 0 14 70 hcn 100 PART=LM324
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U2
a 0 ap 9 0 56 8 hcn 100 REFDES=U2A
part 4 LM324 270 210 U
a 0 sp 11 0 14 70 hcn 100 PART=LM324
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 a 0:13 0 0 0 hln 100 PKGREF=U1
a 0 ap 9 0 56 8 hcn 100 REFDES=U1A
part 8 r 370 190 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 ap 9 0 15 0 hln 100 REFDES=R2
part 12 c 330 110 u
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=C1
a 0 u 13 0 20 0 hln 100 VALUE=10u
a 0 ap 9 0 20 30 hln 100 REFDES=C1
a 0 u 0 0 0 0 hln 100 IC=4
part 7 r 210 170 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
part 2 VPULSE 190 190 h
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
part 11 r 630 140 d
a 0 u 13 0 15 25 hln 100 VALUE=6
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R5
a 0 ap 9 0 15 0 hln 100 REFDES=R5
part 9 r 540 210 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R3
a 0 ap 9 0 15 0 hln 100 REFDES=R3
a 0 u 13 0 15 25 hln 100 VALUE=1k
part 10 r 520 230 d
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R4
a 0 ap 9 0 15 0 hln 100 REFDES=R4
a 0 u 13 0 15 25 hln 100 VALUE=1k
part 158 VDC 410 250 h
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V14
a 1 ap 9 0 24 7 hcn 100 REFDES=V14
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
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
w 47
a 0 up 0:33 0 0 0 hln 100 V=
s 630 130 630 140 46
a 0 up 33 0 632 135 hlt 100 V=
w 55
a 0 sr 0 0 0 0 hln 100 LABEL=op2
a 0 up 0:33 0 0 0 hln 100 V=
s 540 210 520 210 54
a 0 sr 3 0 530 208 hcn 100 LABEL=op2
a 0 up 33 0 530 209 hct 100 V=
s 510 210 520 210 68
s 520 210 520 230 56
w 73
a 0 sr 0 0 0 0 hln 100 LABEL=in1
a 0 up 0:33 0 0 0 hln 100 V=
s 190 170 210 170 74
a 0 sr 3 0 200 168 hcn 100 LABEL=in1
a 0 up 33 0 200 169 hct 100 V=
s 190 190 190 170 72
w 71
a 0 up 0:33 0 0 0 hln 100 V=
s 190 240 190 230 70
a 0 up 33 0 192 235 hlt 100 V=
w 84
a 0 sr 0 0 0 0 hln 100 LABEL=op1
a 0 up 0:33 0 0 0 hln 100 V=
s 360 190 350 190 87
a 0 sr 3 0 355 188 hcn 100 LABEL=op1
a 0 up 33 0 355 189 hct 100 V=
s 330 110 360 110 119
s 360 190 370 190 89
s 360 110 360 190 85
w 77
a 0 up 0:33 0 0 0 hln 100 V=
s 260 110 300 110 117
s 260 170 260 110 78
a 0 up 33 0 262 140 hlt 100 V=
s 260 170 270 170 80
s 250 170 260 170 76
w 53
a 0 up 0:33 0 0 0 hln 100 V=
a 0 sr 0 0 0 0 hln 100 LABEL=inT
s 590 210 580 210 52
a 0 sr 3 0 585 208 hcn 100 LABEL=inT
a 0 up 33 0 585 209 hct 100 V=
w 49
a 0 up 0:33 0 0 0 hln 100 V=
a 0 sr 0 0 0 0 hln 100 LABEL=out
s 630 180 630 190 48
a 0 sr 3 0 632 185 hln 100 LABEL=out
a 0 up 33 0 632 186 hlt 100 V=
w 92
a 0 up 0:33 0 0 0 hln 100 V=
s 260 210 270 210 93
s 260 220 260 210 91
a 0 up 33 0 262 215 hlt 100 V=
w 67
a 0 up 0:33 0 0 0 hln 100 V=
s 430 190 410 190 66
a 0 up 33 0 420 189 hct 100 V=
w 59
a 0 up 0:33 0 0 0 hln 100 V=
s 520 270 520 280 58
a 0 up 33 0 522 275 hlt 100 V=
w 51
a 0 up 0:33 0 0 0 hln 100 V=
s 630 240 630 250 50
a 0 up 33 0 632 245 hlt 100 V=
w 63
a 0 sr 0 0 0 0 hln 100 LABEL=in2
a 0 up 0:33 0 0 0 hln 100 V=
s 410 230 430 230 64
a 0 sr 3 0 420 228 hcn 100 LABEL=in2
a 0 up 33 0 420 229 hct 100 V=
s 410 250 410 230 62
w 61
a 0 up 0:33 0 0 0 hln 100 V=
s 410 300 410 290 60
a 0 up 33 0 412 295 hlt 100 V=
@junction
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
j 470 180
+ p 5 V-
+ s 26
j 470 240
+ p 5 V+
+ s 28
j 310 160
+ p 4 V-
+ s 25
j 310 220
+ p 4 V+
+ s 29
j 410 300
+ s 20
+ w 61
j 430 230
+ p 5 +
+ w 63
j 630 140
+ p 11 1
+ w 47
j 630 130
+ s 27
+ w 47
j 510 210
+ p 5 OUT
+ w 55
j 520 230
+ p 10 1
+ w 55
j 540 210
+ p 9 1
+ w 55
j 520 210
+ w 55
+ w 55
j 190 190
+ p 2 +
+ w 73
j 210 170
+ p 7 1
+ w 73
j 190 230
+ p 2 -
+ w 71
j 190 240
+ s 19
+ w 71
j 330 110
+ p 12 1
+ w 84
j 370 190
+ p 8 1
+ w 84
j 350 190
+ p 4 OUT
+ w 84
j 360 190
+ w 84
+ w 84
j 300 110
+ p 12 2
+ w 77
j 270 170
+ p 4 -
+ w 77
j 250 170
+ p 7 2
+ w 77
j 260 170
+ w 77
+ w 77
j 590 210
+ p 6 b
+ w 53
j 580 210
+ p 9 2
+ w 53
j 630 190
+ p 6 c
+ w 49
j 630 180
+ p 11 2
+ w 49
j 270 210
+ p 4 +
+ w 92
j 260 220
+ s 21
+ w 92
j 430 190
+ p 5 -
+ w 67
j 410 190
+ p 8 2
+ w 67
j 520 270
+ p 10 2
+ w 59
j 520 280
+ s 22
+ w 59
j 630 240
+ p 6 e
+ w 51
j 630 250
+ s 23
+ w 51
j 410 250
+ p 158 +
+ w 63
j 410 290
+ p 158 -
+ w 61
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
