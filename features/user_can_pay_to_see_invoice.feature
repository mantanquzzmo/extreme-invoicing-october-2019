Feature: User can pay to see invoice (part 1)
  As a user
  In order to receive my created invoice
  I would need to perform a payment

  Background:
    Given the following user exist
      | email         | password |
      | user@user.com | password |

    And I am logged in as "user@user.com"

    And an invoice has been created

  Scenario: User can see his invoice
    When I click on "View invoice"
    Then I should see "Invoice no: 1"