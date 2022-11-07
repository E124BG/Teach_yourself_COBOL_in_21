      ******************************************************************
      * Author: Eliott Bonte
      * Date: 07/11/2022
      * Purpose: Learn about GO TO and its alternatives
      * The use of GO TO is discouraged because it can skip code without ever bouncing back
      * That means some critical areas of code can never be executed.
000100 IDENTIFICATION DIVISION.
000200 PROGRAM-ID. MULT-TABLE.
000300*--------------------------------------------------
000400* This program asks the user for a number for a
000500* multiplication table,
000600* and then displays a table for that number times
000700* the values 1 through 12.
000800*--------------------------------------------------
000900 ENVIRONMENT DIVISION.
001000 DATA DIVISION.
001100 WORKING-STORAGE SECTION.
001200
001300 01 A-NUMBER PIC 99.
001400 01 THE-MULTIPLIER PIC 999.
       01 NB-OF-LINES PIC 99.
001500 01 THE-PRODUCT PIC 9999.
       01 SCREEN-LINES PIC 99.

       01 DUMMY-TO-WAIT PIC X.
001600
001700 PROCEDURE DIVISION.
001800* LEVEL 1 ROUTINES
001900 PROGRAM-BEGIN.
002000 PERFORM PROGRAM-INITIALIZATION.
002100 PERFORM GET-TABLE-NUMBER.
       PERFORM GET-NB-OF-LINES.
002200 PERFORM DISPLAY-THE-TABLE.
002300
002400 PROGRAM-DONE.
002500 STOP RUN.
002600
002700* LEVEL 2 ROUTINES
002800 PROGRAM-INITIALIZATION.
002900 MOVE 0 TO THE-MULTIPLIER.
       MOVE 0 TO SCREEN-LINES.
003000
003100 GET-TABLE-NUMBER.
003200 DISPLAY
003300 "Which multiplication table (01-99)?".
003400 ACCEPT A-NUMBER.

       GET-NB-OF-LINES.
           DISPLAY
           "How many lines of the table should be displayed (0-99) ?".
           ACCEPT NB-OF-LINES.
003500
003600 DISPLAY-THE-TABLE.
003700 DISPLAY "The " A-NUMBER "s table first line(s) are:".
      * PERFORM can be used with "X TIMES" in order to perform multiple times a paragraph.
003800 PERFORM CALCULATE-AND-DISPLAY NB-OF-LINES TIMES.
003900
004000* LEVEL 3 ROUTINES.
004100 CALCULATE-AND-DISPLAY.
004200 ADD 1 TO THE-MULTIPLIER.
004300 COMPUTE THE-PRODUCT = A-NUMBER * THE-MULTIPLIER.
004400 DISPLAY
004500 A-NUMBER " * " THE-MULTIPLIER " = " THE-PRODUCT.
      * In case we go out of the screen, let's wait every 10 lines that the user confirms to go further.
       ADD 1 TO SCREEN-LINES.
       IF SCREEN-LINES = 10
       DISPLAY "PRESS ENTER TO CONTINUE..."
       ACCEPT DUMMY-TO-WAIT
       MOVE 0 TO SCREEN-LINES.
      *Commented below is the GO TO METHOD
004600 *> IF THE-MULTIPLIER < 12
004700 *> GO TO CALCULATE-AND-DISPLAY.
004800
