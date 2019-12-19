Feature: User can store customer data
  As a user
  In order to avoid manual input for repeated invoices
  I would like to store my customers information

  Background:
    Given the following users exist
      | email          | password |
      | user@user.com  | password |
      | user2@user.com | password |

    And the following customers exist
      | name    | organisation_number | address  | postcode | city     | user          |
      | ACME AB | 123456-7890         | Street 1 | 12345    | Cityname | user@user.com |

  Scenario: Can create a new customer
    Given I am logged in as "user@user.com"
    And I am on the index page
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
    Given I am logged in as "user@user.com"
    And I am on the index page
    When I click on "Add new customer"
    And I fill in "Name" with "Craft Academy AB"
    And I fill in "Organisation number" with "559078-2248"
    And I fill in "Address" with "Valhallavägen 79"
    And I fill in "Postcode" with "string"
    And I fill in "City" with "Stockholm"
    And I click on "Add customer"
    Then I should see "Please fill in the form correctly."

  Scenario: User can see customers created by itself
    Given I am logged in as "user@user.com"
    And I am on the index page
    Then I should see "ACME AB"
    And I should see "123456-7890"

  Scenario: User can not see customers created by another user
    Given I am logged in as "user2@user.com"
    And I am on the index page
    Then I should not see "ACME AB"

