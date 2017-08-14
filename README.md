Version 1 (6 August 2017)

PROJECT SPECIFICATIONS

We were asked to code a simple ATM programme in Ruby that would allow the user to do things such as deposit money, withdraw money, and check their account balance.

SYNOPSIS

The user is greeted at the start of the programme, and given the option to enter A to check their account balance, W to withdraw money, D to deposit money, and E to exit at any time. Their account is automatically set to having $100 - if they attempt to withdraw more than that amount, they will be told there is insufficient money in their account, and asked to enter a smaller amount. They are able to depsit and withdraw money by entering in amounts, and the account balance will be updated instantly.

FURTHER WORK

Unfortunately (despite saying it does!) this version does not yet allow the user to press A, W, D or E at any time (they can only do so when the menu comes up, which is fairly frequently depending on what options they have selected). This will need to be fixed in the next version.

Further, code will need to be entered that stops the user from entering letters when trying to deposit/withdraw money - to-date, the entry is converted into an integer and presumed to be 0 by Ruby.
