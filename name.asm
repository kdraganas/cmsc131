TITLE ASM1 (.EXE MODEL)
;---------------------------------------------
STACKSEG SEGMENT PARA 'Stack'
STACKSEG ENDS
;---------------------------------------------
DATASEG SEGMENT PARA 'Data'
 MESSAGE DB "*        *  *********  *********",10,13
 MESSAGE1 DB "*      *    *       *      *",10,13
 MESSAGE2 DB "*    *      *       *      *",10,13
 MESSAGE3 DB "* *         *********      *",10,13
 MESSAGE4 DB "*   *       *       *      *",10,13
 MESSAGE5 DB "*     *     *       *      *",10,13
 MESSAGE6 DB "*      *    *       *      *",10,13
 MESSAGE7 DB "*       *   *       *      *",10,13
 MESSAGE8 DB "*        *  *       *      *"
 DB "$"
DATASEG ENDS
;---------------------------------------------
CODESEG SEGMENT PARA 'Code'
  ASSUME SS:STACKSEG, DS:DATASEG, CS:CODESEG
START:
 MOV AX, DATASEG
 MOV DS, AX

 MOV DX, OFFSET MESSAGE
 MOV AH, 09
 INT 21H

 ;terminate; return; exit
 MOV AH, 4CH
 INT 21H
CODESEG ENDS
END START
