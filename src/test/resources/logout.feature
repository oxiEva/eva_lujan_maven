Feature: Logout

  Scenario: Successfully log out
    Given I navigate to "https://www.saucedemo.com"
    When I enter "standard_user" into the username field
    And I enter "secret_sauce" into the password field
    And I click the Login button
    When I log out
    Then I should be redirected to "https://www.saucedemo.com/"