      ******************************************************************
      * Author: Eliott Bonte
      * Date: 06/11/2022
      * Purpose: This program accepts Y or N as input, (lowercase is also accepted)
      * it is an example of the IF keyword usage.
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YESNO01.
       ENVIRONMENT DIVISION.
       DATA DIVISION.

           WORKING-STORAGE SECTION.

       01  YES-OR-NO PIC X.

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.

           PERFORM GET-USER-INPUT.
           PERFORM CONVERT-LOWERCASE-TO-UPPER.
           PERFORM DISPLAY-ANSWER.

       PROGRAM-DONE.
           STOP RUN.

       GET-USER-INPUT.
           DISPLAY "Please enter Y or N.".
           ACCEPT YES-OR-NO.

       CONVERT-LOWERCASE-TO-UPPER.
           IF YES-OR-NO IS EQUAL "y"
               MOVE "Y" TO YES-OR-NO
           ELSE IF YES-OR-NO IS EQUAL "n"
               MOVE "N" TO YES-OR-NO.

       DISPLAY-ANSWER.
           IF YES-OR-NO IS EQUAL "Y"
               DISPLAY "You answered Yes."
           ELSE IF YES-OR-NO IS EQUAL "N"
               DISPLAY "You answered No."
           ELSE
               DISPLAY "Try entering Y or N.".
