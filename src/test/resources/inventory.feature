Feature: Inventory Management

  Background:
    Given I navigate to "https://www.saucedemo.com"
    When I enter "standard_user" into the username field
    And I enter "secret_sauce" into the password field
    And I click the Login button

  Scenario: Validate the number of displayed products is 6
    Then I should see 6 products displayed

  Scenario: Validate "Sauce Labs Bolt T-Shirt" is in the inventory
    Then the product "Sauce Labs Bolt T-Shirt" should be displayed in the inventory

  Scenario: Add "Sauce Labs Bolt T-Shirt" to the cart
    When I add "Sauce Labs Bolt T-Shirt" to the cart
    Then the cart icon should show 1 product

  Scenario: Remove "Sauce Labs Bolt T-Shirt" from the cart
    When I add "Sauce Labs Bolt T-Shirt" to the cart
    And I remove "Sauce Labs Bolt T-Shirt" from the cart
    Then the cart icon should show 0 products

  Scenario: Add 3 random products to the cart
    When I add 3 random products to the cart
    Then the cart icon should show 3 products

  Scenario: Sort inventory by name from Z to A
    When I select the filter "NAME (Z to A)"
    Then the inventory should be sorted alphabetically from Z to A

  Scenario: Sort inventory by price from low to high
    When I select the filter "PRICE (low to high)"
    Then the inventory should be sorted by price from low to high