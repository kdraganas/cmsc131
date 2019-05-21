TITLE ASM1 (.EXE MODEL)
;---------------------------------------------
STACKSEG SEGMENT PARA 'Stack'
STACKSEG ENDS
;---------------------------------------------
DATASEG SEGMENT PARA 'Data'
 INPUT1 DB ?,'$'
 INPUT2 DB ?,'$'
 INPUT3 DB ?,'$'
 
 msg db "Enter initial of first name: ",10,13,'$'
 msg1 db "Enter initial of middle name: ",10,13,'$'
 msg2 db "Enter initial of last name: ",10,13,'$'

 msg3 db 10,13,"Initial of your first name is $"
 msg4 db ", middle name is $"
 msg5 db ", and last name is $" 
 msg6 db "!$" 
DATASEG ENDS
;---------------------------------------------
CODESEG SEGMENT PARA 'Code'
  ASSUME SS:STACKSEG, DS:DATASEG, CS:CODESEG
START:
 MOV AX, DATASEG
 MOV DS, AX

 LEA DX, msg
 MOV AH, 09H
 INT 21H

 MOV AH, 10H
 INT 16H
 MOV INPUT1, AL

 LEA DX, msg1
 MOV AH, 09H
 INT 21H

 MOV AH, 10H
 INT 16H
 MOV INPUT2, AL

 LEA DX, msg2
 MOV AH, 09H
 INT 21H

 MOV AH, 10H
 INT 16H
 MOV INPUT3, AL

;print
 LEA DX, msg3
 MOV AH, 09H
 INT 21H

 LEA DX, INPUT1
 MOV AH, 09H
 INT 21H


 LEA DX, msg4
 MOV AH, 09H
 INT 21H

 LEA DX, INPUT2
 MOV AH, 09H
 INT 21H


 LEA DX, msg5
 MOV AH, 09H
 INT 21H

 LEA DX, INPUT3
 MOV AH, 09H
 INT 21H

 LEA DX, msg6
 MOV AH, 09H
 INT 21H


 ;terminate; return; exit
 MOV AH, 4CH
 INT 21H
CODESEG ENDS
END START
