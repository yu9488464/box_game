PUBLIC BLANK
PUBLIC BLCX2,BLDX2
EXTRN BLCX1:WORD,BLDX1:WORD;BLCX2:WORD,BLDX2:WORD
	.MODEL SMALL
	.STACK
	.DATA
	BLCX2 DW ?
	BLDX2 DW ?
	.CODE
BLANK PROC
;=====================�հ׿鲿��λ�ñ�����ֵ========================
	MOV CX,BLCX1
	ADD CX,40
	MOV BLCX2,CX
	MOV DX,BLDX1
	ADD DX,40
	MOV BLDX2,DX
	
;==================���ƶ��ռ�󱳾�=====================    
    MOV CX,BLCX1
	MOV DX,BLDX1
BB:
	MOV AH,0CH
    MOV AL,09H
    INT 10H
    INC DX
    CMP DX,BLDX2
    JC BB
    MOV DX,BLDX1
    INC CX
    CMP CX,BLCX2
    JC BB
;=====================���ƶ��ռ���Χ��ɫ===============================
	MOV CX,BLCX1
    MOV DX,BLDX1
BLLINE1:
	MOV AH,0CH
	MOV AL,0FH
	INT 10H
	INC DX
    CMP DX,BLDX2
    JC BLLINE1
    
    MOV CX,BLCX1
    MOV DX,BLDX1
BLLINE2:
	MOV AH,0CH
	MOV AL,0FH
	INT 10H
	INC CX
    CMP CX,BLCX2
    JC BLLINE2
    
    
    MOV CX,BLCX1
    MOV DX,BLDX2
BLLINE3:
	MOV AH,0CH
	MOV AL,0FH
	INT 10H
	INC CX
    CMP CX,BLCX2
    JC BLLINE3
    
    MOV CX,BLCX2
    MOV DX,BLDX1
BLLINE4:
	MOV AH,0CH
	MOV AL,0FH
	INT 10H
	INC DX
    CMP DX,BLDX2
    JC BLLINE4
;================================================================    
	RET
BLANK ENDP
	END



