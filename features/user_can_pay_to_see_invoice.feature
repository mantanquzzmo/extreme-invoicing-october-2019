Feature: User can pay to receive invoice
  As a user
  In order to receive my created invoice
  I would need to perform a payment

  Background:
    Given the following user exist
      | email         | password |
      | user@user.com | password |

    And the following invoices exist
      | id | date       | due_date             | paid_for | user          |
      | 1  | Date.today | Date.today + 30.days | true     | user@user.com |
      | 2  | Date.today | Date.today + 30.days | false    | user@user.com |

    And I am logged in as "user@user.com"
    And I am on the invoices page

    Scenario: User can pay to unlock invoice
    Given I am logged in as "user@user.com"
    And I click on "Pay Invoice 1"
    Then I should be on the payment page
    And I should see "Invoice payed! You can access your invoice."