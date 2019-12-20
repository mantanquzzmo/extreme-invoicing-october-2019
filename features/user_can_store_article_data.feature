Feature: User can store article data
  As a user
  In order to avoid repetitive input
  I would like to store and retrieve data about my products or services

  Background:
    Given the following users exist
      | email         | password |
      | user@user.com | password |

    And I am logged in as "user@user.com"
    And I am on the index page

  Scenario: User can add a new article to his articles database
    When I click on "Add new article"
    And I fill in "Name" with "Consulting hours"
    And I fill in "Unit" with "h"
    And I fill in "Unit price" with "600"
    And I fill in "Taxrate" with "25"
    And I click on "Add article"
    Then I should be on the invoices page
    And I should see "Consulting hours"
