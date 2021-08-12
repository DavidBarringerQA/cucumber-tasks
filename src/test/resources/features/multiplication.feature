          Feature: Calculator multiplication
            Testing whether the calculator can successfully multiply numbers.

            As a user, I want to multiply two or more numbers so I can use the
            result in further calcualtions or data based decision making.

            Scenario: Integer Multiplication
              Given a calculator
              And the number 5
              And the number 3
              When the numbers are multiplied
              Then the result should be 15

              Scenario: Floating point Multiplication
                Given a calculator
                And the number 2.4
                And the number 5.7
                When the numbers are multiplied
                Then the result should be 13.68
