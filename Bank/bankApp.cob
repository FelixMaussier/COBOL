       IDENTIFICATION DIVISION.
       PROGRAM-ID. BANK-APP.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 BALANCE PIC 9(10)V99 VALUE 100000.
       01 DEPOSIT-AMOUNT PIC 9(10)V99.
       01 WITHDRAW-AMOUNT PIC 9(10)V99.
       01 OPTION PIC 9(1).

       PROCEDURE DIVISION.
           DISPLAY "Welcome to this super cool bank app!".
           DISPLAY "Your current balance is: " BALANCE.
           DISPLAY "Choose an option:".
           DISPLAY "1: Deposit money".
           DISPLAY "2: Withdraw money".
           DISPLAY "3: Exit".
           ACCEPT OPTION.

           EVALUATE OPTION
               WHEN 1
                    DISPLAY "Enter amount to deposit: ".
                    ACCEPT DEPOSIT-AMOUNT.
                    ADD DEPOSIT-AMOUNT TO BALANCE.
                    DISPLAY "New balance is: " BALANCE.
               WHEN 2
                    DISPLAY "Enter amount to withdraw: ".
                    ACCEPT WITHDRAW-AMOUNT.
                    IF WITHDRAW-AMOUNT > BALANCE
                        DISPLAY "Not enough funds!".
                    ELSE
                        SUBTRACT WITHDRAW-AMOUNT FROM BALANCE.
                        DISPLAY "New balance is: " BALANCE.
                    END-IF
               WHEN 3
                    DISPLAY "Have a nice day!".
               WHEN OTHER
                    DISPLAY "Invalid option, please try again!".
           END-EVALUATE.

           STOP RUN.