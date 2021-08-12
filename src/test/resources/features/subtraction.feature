          Feature: Calculator subtraction
            Testing whether the calculator can successfully subtract numbers.

            As a user, I want to add two or more numbers so I can use the
            result in further calcualtions or data based decision making.

            Scenario: Integer Subtraction
              Given a calculator
              And the number 4
              And the number 1
              When the numbers are subtracted
              Then the result should be 3

              Scenario: Floating point subtraction
                Given a calculator
                And the number 5.7
                And the number 1.9
                When the numbers are subtracted
                Then the result should be 3.8
