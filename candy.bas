1 SCREEN1:COLOR10,9,9:CLS:KEYOFF:DEFINTA-Z:C=1:R=0:B=6283:Z=RND(-TIME):U=64:V=2
2 locate0,0:printM:ifW>0thenY=X-S:Z=X+S:T=vpeek(Y):vpokeY,vpeek(Z):vpokeZ,T:W=W-1
3 E$=" ":F$=CHR$(28):H=0:FORI=0TO4:G=B+I*2:ifvpeek(G)=32thenvpokeG,RND(1)*4+1
4 forJ=4TO1step-1:A=G+J*64:ifvpeek(A)=32thenvpokeA,vpeek(A-64):vpokeA-64,32:H=1
5 nextJ,I:ifH=1then3elseforK=0to1:forJ=0TO4:forI=0TO2:A=B+J*V+I*U:T=vpeek(A)
6 ifT=vpeek(A+U)andT=vpeek(A+2*U)thenvpokeA,32:vpokeA+U,32:vpokeA+2*U,32:H=H+1
7 nextI,J:swapU,V:nextK:ifH>0thenM=M+H:W=0:goto2
8 X=B+C+R*32:S=1+31*(Rmod2):vpokeX,254:K$=INKEY$:IFK$=""then8:elsevpokeX,32:ifK$=E$andC<9thenW=2:goto2
9 ifK$=CHR$(31)andr<8thenR=R+1:C=Cxor1:elseifK$=CHR$(30)andR>0thenR=R-1:C=Cxor1
10 ifK$=F$andc<7thenC=C+2:goto8:elseifK$=CHR$(29)andC>1thenC=C-2:goto8:else8



1 SCREEN1:COLOR10,9,9:CLS:KEYOFF:DEFINTA-Z:C=1:R=0:B=6283:Z=RND(-TIME):U=64:V=2
2 ifW>0thenS=1+31*(Rmod2):Y=X-S:Z=X+S:T=vpeek(Y):vpokeY,vpeek(Z):vpokeZ,T:W=W-1
3 E$=" ":F$=CHR$(28):H=0:FORI=0TO4:G=B+I*2:ifvpeek(G)=32thenvpokeG,RND(1)*4+1
4 forJ=4TO1step-1:A=G+J*64:ifvpeek(A)=32thenvpokeA,vpeek(A-64):vpokeA-64,32:H=1
5 nextJ,I:ifH=1then3elseforK=0to1:forJ=0TO4:forI=0TO2:A=B+J*V+I*U:T=vpeek(A)
6 ifT=vpeek(A+U)andT=vpeek(A+2*U)thenvpokeA,32:vpokeA+U,32:vpokeA+2*U,32:H=H+1
7 nextI,J:swapU,V:nextK:ifH>0thenM=M+H:W=0:goto2:else locate0,0:printM:W=2
8 X=B+C+R*32:vpokeX,254:K$=INKEY$:IFK$=""then8:elsevpokeX,32:ifK$=E$andC<9then2
9 ifK$=CHR$(31)andr<8thenR=R+1:C=Cxor1:elseifK$=CHR$(30)andR>0thenR=R-1:C=Cxor1
10 ifK$=F$andc<7thenC=C+2:goto8:elseifK$=CHR$(29)andC>1thenC=C-2:goto8:else8

