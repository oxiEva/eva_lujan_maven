@cart
Feature: Cart Management

  Scenario: Remove a product from the cart
    Given I navigate to "https://www.saucedemo.com"
    When I enter "standard_user" into the username field
    And I enter "secret_sauce" into the password field
    And I click the Login button
    When I add 2 random products to the cart
    And I go to the cart
    And I remove one of the products
    Then the removed product should not be in the cart