;==================================��һ��=======================
MYNAME MACRO HAHA    
LOCAL AA1,LAST1
    MOV DI,OFFSET HAHA
    MOV CH,00
AA1:
    MOV CL,50
    ADD CL,[DI]
    MOV AH,0CH
    MOV AL,08H
    INT 10H
    INC DI
    MOV BL,[DI]
    CMP BL,'B'
    JE LAST1
    CMP BL,'A'
    JNE AA1
    INC DX
    INC DI
    JMP AA1
LAST1: 
	INC DX
ENDM



PUBLIC YUNAME
.MODEL SMALL
.STACK
.DATA
C1 DB 16,17,18,'A',16,17,18,19,20,'A',15,16,17,18,19,20,'A',15,16,17,18,19,20,'A',15,16,17,18,19,20,'B'

C2 DB 14,15,16,17,18,19,20,'A',14,15,16,17,18,19,20,21,22,'A',14,15,16,17,18,19,20,21,22,23,'B'

C3 DB 13,14,15,16,17,18,19,20,21,22,23,24,'A',12,13,14,15,16,17,19,20,21,22,23,24,25,26,'B'

C4 DB 12,13,14,15,16,22,23,24,25,26,27,'A',11,12,13,14,15,23,24,25,26,27,28,'B'

C5 DB 10,11,12,13,14,15,24,25,26,27,28,29,'A',10,11,12,13,14,18,19,20,25,26,27,28,29,30,'B'

C6 DB 9,10,11,12,13,14,17,18,19,20,21,22,'B'
;15�н���

C7 DB 9,10,11,12,13,16,17,19,20,21,22,23,24,26,27,28,29,30,31,32,32,33,'B'

C8 DB 8,9,10,11,12,13,16,17,18,19,20,21,22,23,24,25,27,28,29,30,31,32,32,33,34,35,'B'

C9 DB 7,8,9,10,11,12,13,16,17,18,19,20,21,22,23,24,25,28,29,30,31,32,32,33,34,35,36,37,'B'

C10 DB 7,8,9,10,11,12,13,16,17,18,19,20,21,22,23,24,29,30,31,32,32,33,34,35,36,37,38,39,'B'

C11 DB 6,7,8,9,10,11,9,10,11,12,13,14,15,16,30,31,32,32,33,34,35,36,37,38,39,40,41,'B'
;20
C12 DB 5,6,7,8,9,10,15,16,17,18,19,20,21,31,32,32,33,34,35,36,37,38,39,40,41,42,'B'

C13 DB 5,6,7,8,9,14,15,16,17,18,19,20,21,32,33,34,35,36,37,38,39,40,41,42,'B'

C14 DB 4,5,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,36,37,38,39,40,41,42,'B'

C15 DB 3,4,5,6,7,8,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,'B'

C16 DB 2,3,4,5,6,7,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,'B'
;25
C17 DB 1,2,3,4,5,6,10,11,12,13,14,15,16,17,18,19,20,21,'A',1,2,3,4,5,10,11,12,13,14,15,16,17,18,19,20,21,'B'

C18 DB 1,2,3,4,10,11,12,13,14,15,16,17,18,19,20,21,'A',10,11,12,13,14,15,16,17,18,19,20,21,'B'

C19 DB 13,14,15,16,17,18,19,20,21,22,23,24,25,'A',13,14,15,16,17,18,19,20,21,25,26,27,28,'B'
;31
C20 DB 11,12,13,14,15,16,17,18,19,20,21,26,27,28,29,30,'B'

C21 DB 7,8,9,10,11,12,13,14,15,17,18,19,20,21,26,27,28,29,30,'B'

C22 DB 7,8,9,10,11,12,13,14,18,19,20,21,22,23,24,25,26,27,28,29,30,31,'B'

C23 DB 7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,23,24,25,26,27,28,29,30,31,'B'
;35
C24 DB 7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,24,25,26,27,28,29,30,'B'

C25 DB 7,8,9,10,11,12,14,15,16,17,18,19,20,21,26,27,28,29,30,'B'

C26 DB 8,9,10,11,15,16,17,18,19,20,21,27,28,29,'A',9,10,17,18,19,20,28,'A',18,19,20,'A',19,20,'B'

.CODE

YUNAME PROC

    MOV DX,100

	  MYNAME C1
	  MYNAME C2
	  MYNAME C3
	  MYNAME C4
	  MYNAME C5
	  MYNAME C6
	  MYNAME C7
	  MYNAME C8
	  MYNAME C9
	  MYNAME C10
	  MYNAME C11
	  MYNAME C12
	  MYNAME C13
	  MYNAME C14
	  MYNAME C15
	  MYNAME C16
	  MYNAME C17
	  MYNAME C18
	  MYNAME C19
	  MYNAME C20
	  MYNAME C21
	  MYNAME C22
	  MYNAME C23
	  MYNAME C24
	  MYNAME C25
	  MYNAME C26


	RET
YUNAME ENDP 
END






