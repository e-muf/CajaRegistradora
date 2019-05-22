**********************************
*        CAJA REGISTRADORA       *
**********************************
PACTL  EQU   $1026
PACNT  EQU   $1027
ADCTL  EQU   $1030
ADR1   EQU   $1031
ADR2   EQU   $1032
ADR3   EQU   $1033
ADR4   EQU   $1034
OPTION EQU   $1039

PORTA  EQU   $1000
PORTD  EQU   $1008
PORTE  EQU   $100A
PORTG  EQU   $1002

DDRA   EQU   $1001
DDRD   EQU   $1009
DDRG   EQU   $1003

TMSK2  EQU   $1024
TFLG2  EQU   $1025

SCDR   EQU   $102F
SCCR2  EQU   $102D
SCSR   EQU   $102E
SCCR1  EQU   $102C
BAUD   EQU   $102B
HPRIO  EQU   $103C
SPCR   EQU   $1028
CSCTL  EQU   $105D
OPT2   EQU   $1038

C50    EQU   $0032
C10    EQU   $000A

DIR_BASE EQU  $0060

***********************************
*     DECLARACION DE VARIABLES    *
***********************************
ORDEN  EQU   $0000	* VARIABLE PARA LEER EL PUERTO SERIAL
VAR    EQU   $0001  * ESTA NO SE PARA QUE LA VAYAMOS A UTILIZAR

A      EQU   $0202	* CONTADOR DE ARTICULAS 'A'
AU     EQU   $0204  * UNIDADES DE 'A'
AD     EQU   $0205  * DECENAS DE 'A'
AC     EQU   $0206  * CENTENAS DE 'A'
TA     EQU   $0207  * TOTAL DE 'A'
		
B      EQU   $0212	* CONTADOR DE ARTICULOS 'B'
BD     EQU   $0214  * DECENAS DE 'B'
BC     EQU   $0215  * CENTENAS DE 'B'
BUM    EQU   $0216  * UNIDADES DE MILLAR DE 'B'
TB     EQU   $0217  * TOTAL DE 'B'

C      EQU   $0222	* CONTADOR DE ARTICULOS 'C'
CD     EQU   $0224  * DECENAS DE 'C'
CC     EQU   $0225  * CENTENAS DE 'C'
CUM    EQU   $0226  * UNIDADES DE MILLAR DE 'C'
TC     EQU   $0227  * TOTAL DE 'C'

D      EQU   $0232  * CONTADOR DE ARTICULOS 'D'
DC     EQU   $0234  * CENTENAS DE 'D'
DUM    EQU   $0235  * UNIDADES DE MILLAR DE 'D'
DDM    EQU   $0236  * DECENAS DE MILLAR DE 'D'
TD     EQU   $0237  * TOTAL DE 'D'

E      EQU   $0242  * CONTADOR DE ARTICULOS 'E'
EC     EQU   $0244  * CENTENAS DE 'E'
EUM    EQU   $0245  * UNIDADES DE MILLAR DE 'E'
EDM    EQU   $0246  * DECENAS DE MILLAR DE 'E'
TE     EQU   $0247  * TOTAL DE 'E'

F      EQU   $0252	* CONTADOR DE ARTICULOS 'F'
FUM    EQU   $0254  * UNIDADES DE MILLAR DE 'F'
FDM    EQU   $0255  * DECENAS DE MILLAR DE 'F'
FCM    EQU   $0256  * CENTENAS  DE MILLAR DE 'F'
TF     EQU   $0257  * TOTAL DE 'F'

G      EQU   $0262	* CONTADOR DE ARTICULOS 'G'
GUM    EQU   $0264  * UNIDADES DE MILLAR DE 'G'
GDM    EQU   $0265  * DECENAS DE MILLAR DE 'G'
GCM    EQU   $0266  * CENTENAS  DE MILLAR DE 'G'
TG     EQU   $0267  * TOTAL DE 'G'

H      EQU   $0272	* CONTADOR DE ARTICULOS 'H'
HDM    EQU   $0274  * DECENAS DE MILLAR DE 'H'
HCM    EQU   $0275  * CENTENAS  DE MILLAR DE 'H'
HUMI   EQU   $0276  * UNIDADES DE MILLON DE 'H'
TH     EQU   $0277  * TOTAL DE 'H'

I      EQU   $0282	* CONTADOR DE ARTICULOS 'I'
IDM    EQU   $0284  * DECENAS DE MILLAR DE 'I'
ICM    EQU   $0285  * CENTENAS  DE MILLAR DE 'I'
IUMI   EQU   $0286  * UNIDADES DE MILLON DE 'I'
IDMI   EQU   $0287  * DECENAS DE MILLON DE 'I'
TI     EQU   $0288  * TOTAL DE 'I'

J      EQU   $0292  * CONTADOR DE ARTICULOS 'J' 
JCM    EQU   $0294  * CENTENAS  DE MILLAR DE 'J'
JUMI   EQU   $0295  * UNIDADES DE MILLON DE 'J'
JDMI   EQU   $0296  * DECENAS DE MILLON DE 'J'
TJ     EQU   $0297  * TOTAL DE 'J'
			
ARTT   EQU   $0300	* ARTT es el total de art?ulos
	
UT     EQU   $0017	* TOTAL EN BCD (UNIDADES, DECENAS, CENTENAS, ...)
DT     EQU   $0016
CT     EQU   $0015
UMT    EQU   $0014
DMT    EQU   $0013
CMT    EQU   $0012
UMIT   EQU   $0011
DMIT   EQU   $0010
	
TOTAL  EQU   $0050
SIGNO  EQU   $0002

DIR_IMP EQU  $007B

***********************************
*      VARIABLES PARA ERROR       *
***********************************

ERR1   EQU   $0030 
ERR2   EQU   $0031 
ERR3   EQU   $0032 
ERR4   EQU   $0033 
ERR5   EQU   $0034
ERR6   EQU   $0035
ERR7   EQU   $0036
ERR8   EQU   $0037 
BCD1   EQU   $0060 
BCD2   EQU   $0061 
BCD3   EQU   $0062 

***********************************
*      INICIO DEL PROGRAMA        *
***********************************

       ORG   $4000

NUEVE 	FCC   "NUEVEn"
OCHO 	FCC   "OCHOn"
SIETE 	FCC   "SIETEn"
SEIS 	FCC   "SEISn"
CINCO 	FCC   "CINCOn"
CUATRO 	FCC   "CUATROn"
TRES 	FCC   "TRESn"
DOS 	FCC   "DOSn"
MIL	 	FCC   "MILn"
MILLONES FCC  "MILLONESn"
NOVECIENTOS 	FCC   "NOVECIENTOSn"
OCHOCIENTOS 	FCC   "OCHOCIENTOSn"
SETECIENTOS 	FCC   "SETECIENTOSn"
SEISCIENTOS 	FCC   "SEISCIENTOSn"
QUINIENTOS 	FCC   "QUINIENTOSn"
CUATROCIENTOS 	FCC   "CUATROCIENTOSn"
TRESCIENTOS 	FCC   "TRESCIENTOSn"
DOSCIENTOS 	FCC   "DOSCIENTOSn"
CIENTO	 	FCC   "CIENTOn"
CIEN	 	FCC   "CIENn"
NOVENTA	 	FCC   "NOVENTAn"
OCHENTA	 	FCC   "OCHENTAn"
SETENTA	 	FCC   "SETENTAn"
SESENTA	 	FCC   "SESENTAn"
CINCUENTA 	FCC   "CINCUENTAn"
CUARENTA 	FCC   "CUARENTAn"
TREINTA	 	FCC   "TREINTAn"
VEINTE	 	FCC   "VEINTEn"
DIEZ 	FCC   "DIEZn"
VEINTICINCO 	FCC   "VEINTICINCOn"
QUINCE	 	FCC   "QUINCEn"
Y_CINCO	 	FCC   "Y CINCOn"
PESOS	 	FCC   "PESOSn"

INICIO
    LDS   #$00EE  
    JSR   SERIAL

LIMPIAR
	CLR $02B0
	CLR $02B1
	CLR $02B3
	CLR $02B4	
	CLR $0203	
	CLR A
	CLR AU
	CLR AD
	CLR AC
	CLR TA
	CLR $0213
	CLR B
	CLR BD
	CLR BC
	CLR BUM
	CLR TB
	CLR $0223
	CLR C
	CLR CD
	CLR CC
	CLR CUM
	CLR TC
	CLR $0233
	CLR D
	CLR DC
	CLR DUM
	CLR DDM
	CLR TD
	CLR $0243
	CLR E
	CLR EC
	CLR EUM
	CLR EDM
	CLR TE
	CLR $0253
	CLR F
	CLR FUM
	CLR FDM
	CLR FCM
	CLR TF
	CLR $0263
	CLR G
	CLR GUM
	CLR GDM
	CLR GCM
	CLR TG
	CLR $0273
	CLR H
	CLR HDM
	CLR HCM
	CLR HUMI
	CLR TH
	CLR $0283
	CLR I
	CLR IDM
	CLR ICM
	CLR IUMI
	CLR IDMI
	CLR TI
	CLR $0293
	CLR J
	CLR JCM
	CLR JUMI
	CLR JDMI
	CLR TJ
	CLR UT
	CLR DT
	CLR CT
	CLR UMT
	CLR DMT
	CLR CMT
	CLR UMIT
	CLR DMIT
	CLR TOTAL

	LDAB #'+
	STAB SIGNO
ENCICLATE
	LDAA #'?
	STAA ORDEN
	LDAB SIGNO
CICLO
	LDAA ORDEN
	CMPA #'?
	BEQ CICLO
	CMPB #'?
	BEQ CAMBIAR_SIGNO
	CMPA #'N
	BEQ PUENTE_LIMPIAR
	CMPA #'A
	BEQ MODIFICAR_A
	CMPA #'B
	BEQ MODIFICAR_B
	CMPA #'C
	BEQ MODIFICAR_C
	CMPA #'D
	BEQ MODIFICAR_D
	CMPA #'E
	BEQ MODIFICAR_E
	CMPA #'F
	BEQ PUENTE_F
	CMPA #'G
	BEQ PUENTE_G
	CMPA #'H
	BEQ PUENTE_H
	CMPA #'I
	BEQ PUENTE_I
	CMPA #'J
	BEQ PUENTE_J
	JMP ENCICLATE

PUENTE_LIMPIAR
	JMP LIMPIAR

CAMBIAR_SIGNO
	CMPA #'+
	BEQ SUMAR
	CMPA #'-
	BEQ RESTAR
	CMPA #'=
	BNE ENCICLATE
	JMP CALCULAR

QUITAR_SIGNO
	LDAB #'?
	STAB SIGNO
	JMP ENCICLATE

SUMAR
	LDAB #'+
	STAB SIGNO
	JMP ENCICLATE

RESTAR
	LDAB #'-
	STAB SIGNO
	JMP ENCICLATE

PUENTE_F
	JMP MODIFICAR_F

PUENTE_G
	JMP MODIFICAR_G

PUENTE_H
	JMP MODIFICAR_H

PUENTE_I
	JMP MODIFICAR_I

PUENTE_J
	JMP MODIFICAR_J

PUENTE_ENCICLATE
	JMP ENCICLATE

MODIFICAR_A
	CMPB #'+
	BEQ AGREGAR_A
	CMPB #'-
	BNE PUENTE_ENCICLATE
	JMP QUITAR_A

MODIFICAR_B
	CMPB #'+
	BEQ AGREGAR_B
	CMPB #'-
	BNE PUENTE_ENCICLATE
	JMP QUITAR_B

MODIFICAR_C
	CMPB #'+
	BEQ AGREGAR_C
	CMPB #'-
	BNE PUENTE_ENCICLATE
	JMP QUITAR_C

MODIFICAR_D
	CMPB #'+
	BEQ AGREGAR_D
	CMPB #'-
	BNE PUENTE_ENCICLATE
	JMP QUITAR_D

MODIFICAR_E
	CMPB #'+
	BEQ AGREGAR_E
	CMPB #'-
	BNE PUENTE_ENCICLATE
	JMP QUITAR_E

MODIFICAR_F
	CMPB #'+
	BEQ AGREGAR_F
	CMPB #'-
	BNE PUENTE_ENCICLATE
	JMP QUITAR_F

MODIFICAR_G
	CMPB #'+
	BEQ AGREGAR_G
	CMPB #'-
	BNE PUENTE_ENCICLATE
	JMP QUITAR_G

MODIFICAR_H
	CMPB #'+
	BEQ AGREGAR_H
	CMPB #'-
	BNE PUENTE_ENCICLATE
	JMP QUITAR_H

MODIFICAR_I
	CMPB #'+
	BEQ AGREGAR_I
	CMPB #'-
	BNE PUENTE_ENCICLATE
	JMP QUITAR_I

MODIFICAR_J
	CMPB #'+
	BEQ AGREGAR_J
	CMPB #'-
	BNE PUENTE_ENCICLATE
	JMP QUITAR_J


ERROR_A
	JSR ERROR
AGREGAR_A
	INC A
	JMP QUITAR_SIGNO

ERROR_B
	JSR ERROR
AGREGAR_B
	INC B
	JMP QUITAR_SIGNO

ERROR_C
	JSR ERROR
AGREGAR_C
	INC C
	JMP QUITAR_SIGNO

ERROR_D
	JSR ERROR
AGREGAR_D
	INC D
	JMP QUITAR_SIGNO

ERROR_E
	JSR ERROR
AGREGAR_E
	INC E
	JMP QUITAR_SIGNO

ERROR_F
	JSR ERROR
AGREGAR_F
	INC F
	JMP QUITAR_SIGNO

ERROR_G
	JSR ERROR
AGREGAR_G
	INC G
	JMP QUITAR_SIGNO

ERROR_H
	JSR ERROR
AGREGAR_H
	INC H
	JMP QUITAR_SIGNO

ERROR_I
	JSR ERROR
AGREGAR_I
	INC I
	JMP QUITAR_SIGNO

ERROR_J
	JSR ERROR
AGREGAR_J
	INC J
	JMP QUITAR_SIGNO

QUITAR_A
	DEC A
	BLT ERROR_A
	JMP QUITAR_SIGNO

QUITAR_B
	DEC B
	BLT ERROR_B
	JMP QUITAR_SIGNO

QUITAR_C
	DEC C
	BLT ERROR_C
	JMP QUITAR_SIGNO

QUITAR_D
	DEC D
	BLT ERROR_D
	JMP QUITAR_SIGNO
	
QUITAR_E
	DEC E
	BLT ERROR_E
	JMP QUITAR_SIGNO

QUITAR_F
	DEC F
	BLT ERROR_F
	JMP QUITAR_SIGNO

QUITAR_G
	DEC G
	BLT ERROR_G
	JMP QUITAR_SIGNO

QUITAR_H
	DEC H
	BLT ERROR_H
	JMP QUITAR_SIGNO

QUITAR_I
	DEC I
	BLT ERROR_I
	JMP QUITAR_SIGNO

QUITAR_J
	DEC J
	BLT ERROR_J
	JMP QUITAR_SIGNO

CALCULAR 
	JSR LIMPIAR_ERROR

	LDAA A
	LDAB A
	JSR OFERTA_1_50
	STX TA

	LDAA B
	LDAB B
	JSR OFERTA_1_10
	STX TB

	LDAA C
	LDAB C
	JSR OFERTA_1_50
	STX TC

	LDAA D
	LDAB D
	JSR OFERTA_1_10
	STX TD

	LDAA D
	LDAB D
	JSR OFERTA_1_10
	STX TD

	LDAA E
	LDAB E
	JSR OFERTA_2_50
	STX TE

	LDAA F
	LDAB F
	JSR OFERTA_2_10
	STX TF

	LDAA G
	LDAB G
	JSR OFERTA_2_50
	STX TG

	LDAA H
	LDAB H
	JSR OFERTA_2_10
	STX TH

	LDAB I
	STAB $02B2
CALCULAR_I
	LDAB $02B2
	CMPB #0
	BEQ SUMAR_PRECIOS_I
	LDX #2
	IDIV
	CPD #0
	BEQ MITAD_PRECIO_I
	LDAB #01
	LDAA #C50
	MUL
	ADDD $02B0
	STD  $02B0
	DEC $02B2
	JMP CALCULAR_I
MITAD_PRECIO_I
	LDAA #$19
	LDAB #1
	MUL
	ADDD $02B3
	STD  $02B3
	DEC $02B2
	JMP CALCULAR_I
SUMAR_PRECIOS_I
	LDD $02B3
	ADDD $02B0
	STD TI

	LDAB J
	STAB $02B2
CALCULAR_J
	LDAB $02B2
	CMPB #0
	BEQ SUMAR_PRECIOS_J
	LDX #2
	IDIV
	CPD #0
	BEQ MITAD_PRECIO_J
	LDAB #01
	LDAA #C10
	MUL
	ADDD $02B0
	STD  $02B0
	DEC $02B2
	JMP CALCULAR_J
MITAD_PRECIO_J
	LDAA #$5
	LDAB #1
	MUL
	ADDD $02B3
	STD  $02B3
	DEC $02B2
	JMP CALCULAR_J
SUMAR_PRECIOS_J
	LDD $02B3
	ADDD $02B0
	STD TJ

SEPARAR_UNIDADES


**************************************************
*            SUBRUTINA DE DESCUENTOS             *
**************************************************
OFERTA_1_50
	DECB
	DECB
	DECB
	DECB
	BGT PROMOCION_1_50
	LDAB #C50
	MUL
	LDX #1
	IDIV
	RTS
PROMOCION_1_50
	LDAB #4
	ABA
	LDAB #C50
	MUL
	LDX #2
	IDIV
	RTS

OFERTA_1_10
	DECB
	DECB
	DECB
	DECB
	BGT PROMOCION_1_10
	LDAB #C10
	MUL
	LDX #1
	IDIV
	RTS
PROMOCION_1_10
	LDAB #4
	ABA
	LDAB #C10
	MUL
	LDX #2
	IDIV
	RTS
	
OFERTA_2_50
	DECB
	DECB
	DECB
	DECB
	DECB
	BGT PROMOCION_2_50
	LDAB #C50
	MUL
	LDX #1
	IDIV
	RTS
PROMOCION_2_50
	LDAB #C50
	MUL
	LDX #2
	IDIV
	RTS

OFERTA_2_10
	DECB
	DECB
	DECB
	DECB
	DECB
	BGT PROMOCION_2_10
	LDAB #C10
	MUL
	LDX #1
	IDIV
	RTS
PROMOCION_2_10
	LDAB #C10
	MUL
	LDX #2
	IDIV
	RTS

**************************************************
*              SUBRUTINA DE ERROR                *
**************************************************
ERROR
	LDAA  #'[
	STAA  ERR1
	LDAA  #'-
	STAA  ERR2
	LDAA  #']
	STAA  ERR3
	LDAA  #'E
	STAA  ERR4
	LDAA  #'R
	STAA  ERR5
	LDAA  #'R
	STAA  ERR6
	LDAA  #'O
	STAA  ERR7
	LDAA  #'R
	STAA  ERR8
	RTS

LIMPIAR_ERROR
ESPERAR LDAB #C50
	NOP
	DECB
	BEQ ESPERAR
	CLR  ERR1
	CLR  ERR2
	CLR  ERR3
	CLR  ERR4
	CLR  ERR5
	CLR  ERR6
	CLR  ERR7
	CLR  ERR8
	RTS

**************************************************
* SUBRUTINA  DE CONFIGURACION PUERTO SERIAL      *
**************************************************
SERIAL
    LDD   #$302C  * CONFIGURA PUERTO SERIAL
    STAA  BAUD    * BAUD  9600  para cristal de 8MHz
    STAB  SCCR2   * HABILITA  RX Y TX PERO INTERRUPCN SOLO RX
    LDAA  #$00
    STAA  SCCR1   * 8 BITS

    LDAA  #$FE    * CONFIG PUERTO D COMO SALIDAS (EXCEPTO PD0)
    STAA  DDRD    * SEA  ENABLE DEL DISPLAY  PD4  Y RS PD3                    
      
    LDAA  #$04
    STAA  HPRIO

    LDAA  #$00
    TAP
    RTS
***********************************
* ATENCION A INTERRUPCION SERIAL
***********************************
    ORG  $F100
  
    LDAA SCSR
    LDAA SCDR
    STAA ORDEN
    DEC  VAR
    RTI

***********************************
* VECTOR INTERRUPCION SERIAL
***********************************
    ORG   $FFD6
    FCB   $F1,$00       

***********************************
*RESET
***********************************
    ORG    $FFFE
RESET  FCB    $80,$00
***********************************


********
***TODO LO SIGUIENTE USA LA DIRECTIVA FCC PARA ESCRIBIR LA INFROAMCI? DEL TICKET, AL ESTAR AL FINAL NO TIENE EL PROBLEMA DE IMPRIMIR LOS OPCODES
********
	ORG   $0040
MSG1	FCC   'TICKET'
	ORG   $0050
MSG2	FCC   '----------------'
	ORG   $0100
MSG3	FCC   '----------------'
	ORG   $0110
MSG4	FCC   'TOTAL:'
	END