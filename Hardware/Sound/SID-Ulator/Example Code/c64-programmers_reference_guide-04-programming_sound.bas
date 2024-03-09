5 S=0 :REG=212 :DAT=213
10 FOR L=S TO S+24 :OUT REG,L :OUT DAT,0 :NEXT :REM CLEAR SOUND CHIP
20 OUT REG,S+5 :OUT DAT,9 :OUT REG,S+6 :OUT DAT,0
30 OUT REG,S+24 :OUT DAT,15 :REM SET VOLUME TO MAX
40 READ HF, LF, DR
50 IF HF<0 THEN END
60 OUT REG,S+1 :OUT DAT,HF :OUT REG,S :OUT DAT,LF
70 OUT REG,S+4 :OUT DAT,33
80 FOR T=1 TO DR :NEXT
90 OUT REG,S+4 :OUT DAT,32 :FOR T=1 TO 200 :NEXT
100 GOTO 40
110 DATA 25,177,250,28,214,250
120 DATA 25,177,250,25,177,250
130 DATA 25,177,125,28,214,125
140 DATA 32,94,750,25,177,250
150 DATA 28,214,250,19,63,250
160 DATA 19,63,250,19,63,250
170 DATA 21,154,63,24,63,63
180 DATA 25,177,250,24,63,125
190 DATA 19,63,250,-1,-1,-1


