Feature: Login

  @LoginPositive
  Scenario: Successful login
    Given User launches Chrome browser
    When User opens ilcarro HomePage
    And User clicks on Login Link
    And User enters correct data
    And User clicks on Yalla button
    Then User verifies Success message is displayed
    And User closes browser

  @wrongPassword
  Scenario Outline: Login with correct email and wrong password
    Given User launches Chrome browser
    When User opens ilcarro HomePage
    And User clicks on Login link
    And User enters correct email and wrong password
      | email   | password   |
      | <email> | <password> |
    And User clicks on Yalla button
    Then User verifies Error message is displayed
    And User closes browser
    Examples:
      | email                       | password    |
      | nata.gavrish.78@gmail.com   | Manuel12341 |
      | nata.gavrish.78@gmail.com   | manuel1234! |
      | nata.gavrish.78@gmail.com   | MANUEL12341 |
      | nata.gavrish.78@gmail.com   | Ьфтгуд12341 |
