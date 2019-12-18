Feature: User can store customer data
  As a user
  In order to avoid manual input for repeated invoices
  I would like to store my customers information

  Background:
    Given the following user exist
      | email         | password |
      | user@user.com | password |

    And I am logged in as "user@user.com"
    And I am on the index page

  Scenario: Can create a new customer
    When I click on "Add new customer"
    And I fill in "Name" with "Craft Academy AB"
    And I fill in "Organisation number" with "559078-2248"
    And I fill in "Address" with "Valhallavägen 79"
    And I fill in "Postcode" with "11428"
    And I fill in "City" with "Stockholm"
    And I click on "Add customer"
    Then I should be on the invoices page
    And I should see "Craft Academy AB"
    And I should see "559078-2248"

  Scenario: Add customer form not filled out correctly
    When I click on "Add new customer"
    And I fill in "Name" with "Craft Academy AB"
    And I fill in "Organisation number" with "559078-2248"
    And I fill in "Address" with "Valhallavägen 79"
    And I fill in "Postcode" with "string"
    And I fill in "City" with "Stockholm"
    And I click on "Add customer"
    Then I should see "Please fill in the form correctly."



