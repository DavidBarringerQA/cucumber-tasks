Feature: Calculator addition
  Testing whether the calculator can successfully add numbers.
  
  As a user, I want to add two or more numbers so I can then use
  the sum in further calculations or data based decision making.

  Scenario: Integer addition
    Given a calculator
    And the number 2
    And the number 8
    When the numbers are added
    Then the result should be 10

  Scenario: Floating point addition
    Given a calculator
    And the number 3.4
    And the number 8.9
    When the numbers are added
    Then the result should be 12.3
