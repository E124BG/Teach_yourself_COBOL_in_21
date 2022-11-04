      ******************************************************************
      * Author: Eliott Bonte
      * Date: 01/11
        IDENTIFICATION DIVISION.
        *> identify basic info about program
        PROGRAM-ID. HELLO.
        ENVIRONMENT DIVISION.
        *> this section is used to define physical environment of files used
        DATA DIVISION.
        *> contains any data that program operates on
        PROCEDURE DIVISION.
        *> the main logic of the program

        PROGRAM-BEGIN.
           DISPLAY "Hello world".

        PROGRAM-DONE.
           STOP RUN.
