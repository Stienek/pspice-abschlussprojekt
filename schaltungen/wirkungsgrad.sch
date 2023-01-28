*version 9.1 3701540233
u 28
R? 3
V? 2
PM? 2
? 5
@libraries
@analysis
.DC 1 0 3 0 3 4
+ 0 0 V1
+ 0 7 12
+ 1 0 Rvar
+ 1 7 7.15,3.29,1.59,0.57,1u
.TRAN 0 0 0 0
+0 0ns
+1 1000ns
.STEP 1 0 4
+ 0 Rvar
+ 4 1n
+ 5 50
+ 6 100m
+ -1 7.15,3.29,1.59,0.57,1u
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
pageloc 1 0 2049 
@status
n 0 123:00:28:10:28:01;1674898081 e 
s 2832 123:00:28:10:28:01;1674898081 e 
c 123:00:28:10:27:58;1674898078
*page 1 0 970 720 iA
@ports
port 3 AGND 340 200 h
port 2 AGND 220 200 h
@parts
part 19 PARAM 260 70 h
a 0 u 13 0 0 20 hln 100 NAME1=Rvar
a 0 u 13 0 50 22 hlb 100 VALUE1=100
a 0 a 0:13 0 0 0 hln 100 PKGREF=PM1
a 1 ap 0 0 10 -2 hcn 100 REFDES=PM1
part 4 r 260 110 h
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R1
a 0 ap 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 10 25 hln 100 VALUE={Rvar}
part 5 r 340 140 d
a 0 ap 9 0 25 0 hln 100 REFDES=R2
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 a 0:13 0 0 0 hln 100 PKGREF=R2
a 0 u 13 0 25 25 hln 100 VALUE=6
part 6 VDC 220 140 h
a 1 u 13 0 -11 18 hcn 100 DC=12
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 a 0:13 0 0 0 hln 100 PKGREF=V1
a 1 ap 9 0 24 7 hcn 100 REFDES=V1
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
part 24 nodeMarker 340 110 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=1
part 25 iMarker 340 140 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 6 20 hlb 100 LABEL=2
@conn
w 18
a 0 up 0:33 0 0 0 hln 100 V=
s 340 200 340 180 20
a 0 up 33 0 342 195 hlt 100 V=
w 8
a 0 up 0:33 0 0 0 hln 100 V=
s 220 200 220 180 22
a 0 up 33 0 222 195 hlt 100 V=
w 14
a 0 up 0:33 0 0 0 hln 100 V=
s 300 110 340 110 13
a 0 up 33 0 320 109 hct 100 V=
s 340 110 340 140 15
w 10
a 0 up 0:33 0 0 0 hln 100 V=
s 220 140 220 110 9
s 220 110 260 110 11
a 0 up 33 0 240 109 hct 100 V=
@junction
j 220 140
+ p 6 +
+ w 10
j 260 110
+ p 4 1
+ w 10
j 300 110
+ p 4 2
+ w 14
j 340 140
+ p 5 1
+ w 14
j 340 200
+ s 3
+ w 18
j 340 180
+ p 5 2
+ w 18
j 220 200
+ s 2
+ w 8
j 220 180
+ p 6 -
+ w 8
j 340 110
+ p 24 pin1
+ w 14
j 340 140
+ p 25 pin1
+ p 5 1
j 340 140
+ p 25 pin1
+ w 14
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
