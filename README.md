SimpleBank - Solidity Project

small project written in Solidity that simulates a decentralized bank.
It helps to understand the fundamentals of Solidity and smart contracts.

Features:
Deposit: Any user can send Ether to the contract and increase their balance.
Withdraw: A user can withdraw Ether from their own balance.
Check Balance: A user can view their balance stored in the contract.
Events: All deposits and withdrawals are logged as events on the blockchain.

[How it Works]
->deposit()
User calls this function and sends Ether with the transaction (msg.value).
The contract stores this Ether and increases the user's balance.

->withdraw(uint256 _amount)
User requests to withdraw an amount of Ether.
The contract checks if the user has enough balance.
If yes, it decreases the balance and transfers Ether back to the user.

->getBalance()
Returns the current balance of the caller.
It is a view function (read-only, no gas fee).

->Events:
Deposit and Withdraw are emitted to keep a public log of all transactions.
Frontend dApps can listen to these events.
