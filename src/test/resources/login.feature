Feature: Login

  Background:
    Given I navigate to "https://www.saucedemo.com"

  Scenario: Successfully login standard user with valid credentials
    When I enter "standard_sauce" into the username field
    And I enter "secret_sauce" into the password field
    And I click the Login button
    Then I should be redirected to "https://www.saucedemo.com/inventory.html"

  Scenario Outline: Successfully login with valid credentials
    Given I navigate to "https://www.saucedemo.com/"
    When I enter "<username>" into the username field
    And I enter "secret_sauce" into the password field
    And I click the Login button
    Then I should be redirected to "https://www.saucedemo.com/inventory.html"

    Examples:
      | username                |
      | locked_out_user         |
      | problem_user            |
      | performance_glitch_user |

  Scenario: Display error message for invalid login
    When I enter "standard" into the username field
    And I enter "secret_sauce" into the password field
    And I click the Login button
    Then the error message "Epic sadface: Username and password do not match any user in this service" should be displayed

