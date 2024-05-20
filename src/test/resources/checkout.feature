Feature: Checkout

  Background:
    Given I navigate to "https://www.saucedemo.com"
    When I enter "standard_user" into the username field
    And I enter "secret_sauce" into the password field
    And I click the Login button

  Scenario: Validate the final price at checkout for multiple products
    When I add 3 random products to the cart
    And I go to the cart
    And I proceed to checkout
    And I fill in the checkout information
    And I finish the checkout process
    Then the item total should equal the sum of the selected products' prices

  Scenario: Place an order
    When I add 1 random product to the cart
    And I go to the cart
    And I proceed to checkout
    And I fill in the checkout information
    And I finish the checkout process
    Then the order confirmation message should be displayed