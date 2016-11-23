PUBLIC BOX
PUBLIC NBCX1,NBDX1,NBCX2,NBCX2,XZCX2,XZDX2
	EXTRN XZCX1:WORD,XZDX1:WORD,UNI_COLOR:BYTE
	;XZCX2:WORD,XZDX2:WORD
	;NBCX1:WORD,NBDX1:WORD,NBCX2:WORD,NBDX2:WORD
	.MODEL SMALL
	.DATA
	XZCX2 DW ?
	XZDX2 DW ?
	NBCX1 DW ?
	NBDX1 DW ?
	NBCX2 DW ?
	NBDX2 DW ?
	.CODE

BOX PROC
;=======================箱子部分属性变量计算赋值========================================
	MOV CX,XZCX1
	ADD CX,40
	MOV XZCX2,CX
	MOV DX,XZDX1
	ADD DX,40
	MOV XZDX2,DX
;==================箱子黄色大背景=====================    
    MOV CX,XZCX1
	MOV DX,XZDX1
XIANGZI:
	MOV AH,0CH
    MOV AL,0EH
    INT 10H
    INC DX
    CMP DX,XZDX2
    JC XIANGZI
    MOV DX,XZDX1
    INC CX
    CMP CX,XZCX2
    JC XIANGZI
;=====================箱子周围黑色===============================
    MOV CX,XZCX1
    MOV DX,XZDX1
XZLINE1:
	MOV AH,0CH
	MOV AL,00H
	INT 10H
	INC DX
    CMP DX,XZDX2
    JC XZLINE1
    
    MOV CX,XZCX1
    MOV DX,XZDX1
    XZLINE2:
	MOV AH,0CH
	MOV AL,00H
	INT 10H
	INC CX
    CMP CX,XZCX2
    JC XZLINE2
    
    
    MOV CX,XZCX1
    MOV DX,XZDX2
XZLINE3:
	MOV AH,0CH
	MOV AL,00H
	INT 10H
	INC CX
    CMP CX,XZCX2
    JC XZLINE3
    
    MOV CX,XZCX2
    MOV DX,XZDX1
    XZLINE4:
	MOV AH,0CH
	MOV AL,00H
	INT 10H
	INC DX
    CMP DX,XZDX2
    JC XZLINE4
    
;=======================箱子内部块属性赋值=================================

	MOV CX,XZCX1
	ADD CX,7
	MOV NBCX1,CX
	MOV DX,XZDX1
	ADD DX,7
	MOV NBDX1,DX
	MOV CX,XZCX2
	SUB CX,7
	MOV NBCX2,CX
	MOV DX,XZDX2
	SUB DX,7
	MOV NBDX2,DX
    
;=====================箱子内部灰色============================== 

    MOV CX,NBCX1
	MOV DX,NBDX1
XZNB:
	MOV AH,0CH
    MOV AL,08H
    INT 10H
    INC DX
    CMP DX,NBDX2
    JC XZNB
    MOV DX,NBDX1
    INC CX
    CMP CX,NBCX2
    JC XZNB
;========================内部斜杠========================================
    MOV CX,NBCX1
	MOV DX,NBDX1
XZXG:
	MOV AH,0CH
    MOV AL,0EH
    INT 10H
    INC CX
    INC DX
    CMP CX,NBCX2
    JC XZXG
    
    MOV CX,NBCX1
    INC CX
	MOV DX,NBDX1
XZXG1:
	MOV AH,0CH
    MOV AL,0EH
    INT 10H
    INC CX
    INC DX
    CMP CX,NBCX2
    JC XZXG1
    
    
    MOV CX,NBCX1
	MOV DX,NBDX2
XZXG2:
	MOV AH,0CH
    MOV AL,0EH
    INT 10H
    INC CX
    DEC DX
    CMP CX,NBCX2
    JC XZXG2
    
    MOV CX,NBCX1
    INC CX
	MOV DX,NBDX2
XZXG3:
	MOV AH,0CH
    MOV AL,0EH
    INT 10H
    INC CX
    DEC DX
    CMP CX,NBCX2
    JC XZXG3
;==============================箱子独特颜色标记==========================  

	MOV CX,XZCX1
	ADD CX,20
	MOV DX,XZDX1
	ADD DX,20
	MOV AH,0CH
	MOV AL,UNI_COLOR
	INT 10H
	
;=========================================================================	
	  
	RET
BOX ENDP
	END




















