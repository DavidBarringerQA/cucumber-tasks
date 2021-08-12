Feature: Calculator division
  Testing whether the calculator can successfully divide numbers.
  
  As a user, I want to divide two or more numbers so I can use the
  result in further calcualtions or data based decision making.

  Background: Setup calculator
    Given a calculator

    Scenario Outline: Division
      Given the number <num1>
      And the number <num2>
      When the numbers are divided
      Then the result should be <expected>

      Examples: Values
      | num1 | num2 | expected |
      |    2 |    2 |        1 |
      |   15 |    3 |        5 |
      |  6.6 |  2.4 |     2.75 |
      |  6.6 |    3 |      2.2 |

    Scenario: Divide by zero
      Given the number 20
      And the number 0
      When the numbers are divided
      Then an error will occur
