       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULATOR.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM1 PIC 9(5).
       01 NUM2 PIC 9(5).
       01 RESULT PIC Z(5).

       PROCEDURE DIVISION.
           DISPLAY "Enter first number: ".
           ACCEPT  NUM1.
           DISPLAY "Enter second number: ".
           ACCEPT NUM2.

           COMPUTE RESULT = NUM1 + NUM2.
           DISPLAY NUM1 " + " NUM2 " = " RESULT.
           STOP RUN.