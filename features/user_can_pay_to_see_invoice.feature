Feature: User can pay to see invoice (part 1)
  As a user
  In order to receive my created invoice
  I would need to perform a payment

  Background:
    Given the following user exist
      | email         | password |
      | user@user.com | password |

    And I am logged in as "user@user.com"

    Given the following invoices exist
      | id | date       | due_date             | paid_for |
      | 1  | Date.today | Date.today + 30.days | true     |
      | 2  | Date.today | Date.today + 30.days | false    |

    And an invoice has been created
    And I am on the invoices page

  Scenario: Payed for invoices can be viewed
    When I click on "View invoice 1"
    Then I should see "Invoice no: 1"

  Scenario: User can not see unpayed invoice
    When I click on "View invoice 2"
    Then I should see "You have to pay for this invoice before you can view it"

