Feature: Withdraw Fixed Amount
The "Withdraw Cash" menu contains several fixed amounts to
        speed up transactions for users.
Scenario Outline: Withdraw fixed amount
Given I have <Balance> in my account
When I choose to withdraw the fixed amount of <Withdrawal> Then I should receive <Received> cash
And the balance of my account should be <Remaining>
Examples:| Balance | Withdrawal | Received | Remaining |
		 | $500    | $50        | $50      | $450      |
		 | $2500   | $50		| $50	   |  $2450    |
		 | $1000   | $500		| $500	   |  $500     |