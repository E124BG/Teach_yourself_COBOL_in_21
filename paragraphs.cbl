      ******************************************************************
      * Author: Eliott Bonte
      * Date: 06/11/2022
      * Purpose: Learning about paragraphs in COBOL
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PARAGRAPHS.
       ENVIRONMENT DIVISION.
       DATA DIVISION.

       WORKING-STORAGE SECTION.

       01  USER-NAME PIC X(10).


       PROCEDURE DIVISION.
       PROGRAM-BEGIN.
      *This is a paragraph
       GET-USER-INPUT.
           DISPLAY "What is your name? "
           ACCEPT USER-NAME.

      *This is another paragraph
       PRINT-USER-INPUT.

           DISPLAY "Hello, " USER-NAME.

       PROGRAM-DONE.
      *STOP RUN is good practice, even if some compilers will stop at the end of the program automatically.
           STOP RUN.
