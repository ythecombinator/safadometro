*********************************************
*** Safadômetro em COBOL por Keoma Borges ***
***      Compilado no OpenCOBOL 1.1.0     ***
*** Relembrando dos meus dias de IBM *-*  ***
*********************************************
IDENTIFICATION DIVISION.
PROGRAM-ID. SAFADOMETRO.
ENVIRONMENT DIVISION.
DATA DIVISION.
    WORKING-STORAGE SECTION.
        01 DIA      PIC 9(2).
        01 MES      PIC 9(2).
        01 ANO      PIC 9(2).
        01 SOMAMES  PIC 9(3).
        01 SAFAD    PIC 9(3).
        01 ANJO     PIC 9(3).
PROCEDURE DIVISION.
*    MOVE 03 TO MES
*    MOVE 31 TO DIA
*    MOVE 92 TO ANO
*    MOVE ZEROS TO SOMAMES
    PERFORM UNTIL MES = 0
        COMPUTE SOMAMES = SOMAMES + MES
        COMPUTE MES = MES - 1
    END-PERFORM.
    COMPUTE SAFAD = SOMAMES + (ANO / 100) * (50 - DIA)
    COMPUTE ANJO = 100 - SAFAD
    DISPLAY SAFAD
    DISPLAY ANJO.
    STOP RUN.
