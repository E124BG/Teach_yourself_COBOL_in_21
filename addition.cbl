      ******************************************************************
      * Author: Eliott Bonte
      * Date: 04/11/2022
      * Purpose: A program that asks for 2 numbers (2 digits) and adds them.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. ADDITION.
       ENVIRONMENT DIVISION.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
      *variables have level number, name and PICTURE.
       01  FIRST-NUMBER PICTURE IS 99.
       01  SECOND-NUMBER PICTURE IS 99.
       01  RESULT PICTURE IS 999.
       PROCEDURE DIVISION.

       PROGRAM-BEGIN.

       DISPLAY "Enter the first number (0-99)"
       ACCEPT FIRST-NUMBER.

       DISPLAY "Enter the second number (0-99)"
       ACCEPT SECOND-NUMBER.

       COMPUTE RESULT = FIRST-NUMBER + SECOND-NUMBER.

       DISPLAY "The result is:".
       DISPLAY RESULT.


       PROGRAM-DONE.
       STOP RUN.
