
_main:

;BP.c,62 :: 		void main() {
;BP.c,65 :: 		TRISC = 0x00;   // Salida para datos de filas
	CLRF       TRISC+0
;BP.c,66 :: 		TRISD = 0x00;   // Salida para columnas
	CLRF       TRISD+0
;BP.c,67 :: 		ANSEL = 0x00;   // Desactivar entradas analógicas
	CLRF       ANSEL+0
;BP.c,68 :: 		ANSELH = 0x00;
	CLRF       ANSELH+0
;BP.c,69 :: 		PORTC = 0x00;
	CLRF       PORTC+0
;BP.c,70 :: 		PORTD = 0x00;
	CLRF       PORTD+0
;BP.c,72 :: 		while (1) {
L_main0:
;BP.c,75 :: 		for (i = 0; i < 168; i++) {
	CLRF       _i+0
	CLRF       _i+1
L_main2:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main14
	MOVLW      168
	SUBWF      _i+0, 0
L__main14:
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;BP.c,78 :: 		for (k = 0; k < 25; k++) {
	CLRF       _k+0
	CLRF       _k+1
L_main5:
	MOVLW      128
	XORWF      _k+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main15
	MOVLW      25
	SUBWF      _k+0, 0
L__main15:
	BTFSC      STATUS+0, 0
	GOTO       L_main6
;BP.c,81 :: 		for (j = 0; j < 8; j++) {
	CLRF       _j+0
	CLRF       _j+1
L_main8:
	MOVLW      128
	XORWF      _j+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main16
	MOVLW      8
	SUBWF      _j+0, 0
L__main16:
	BTFSC      STATUS+0, 0
	GOTO       L_main9
;BP.c,84 :: 		PORTD = ~PORT_COL[j];
	MOVF       _j+0, 0
	ADDLW      _PORT_COL+0
	MOVWF      FSR
	COMF       INDF+0, 0
	MOVWF      PORTD+0
;BP.c,87 :: 		PORTC = MENSAJE[i + j];
	MOVF       _j+0, 0
	ADDWF      _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _j+1, 0
	MOVWF      R0+1
	MOVLW      _MENSAJE+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(_MENSAJE+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
;BP.c,89 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	NOP
	NOP
;BP.c,92 :: 		PORTC = 0x00;
	CLRF       PORTC+0
;BP.c,81 :: 		for (j = 0; j < 8; j++) {
	INCF       _j+0, 1
	BTFSC      STATUS+0, 2
	INCF       _j+1, 1
;BP.c,93 :: 		}
	GOTO       L_main8
L_main9:
;BP.c,78 :: 		for (k = 0; k < 25; k++) {
	INCF       _k+0, 1
	BTFSC      STATUS+0, 2
	INCF       _k+1, 1
;BP.c,94 :: 		}
	GOTO       L_main5
L_main6:
;BP.c,75 :: 		for (i = 0; i < 168; i++) {
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;BP.c,95 :: 		}
	GOTO       L_main2
L_main3:
;BP.c,97 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	DECFSZ     R11+0, 1
	GOTO       L_main12
	NOP
	NOP
;BP.c,98 :: 		}
	GOTO       L_main0
;BP.c,99 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
