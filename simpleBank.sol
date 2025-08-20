// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// A simple decentralized bank contract
contract SimpleBank {

    // Mapping to store each user's balance
    mapping(address => uint256) private balances;

    // Event to log deposits
    event Deposit(address indexed user, uint256 amount);

    // Event to log withdrawals
    event Withdraw(address indexed user, uint256 amount);

    // Deposit function: allows users to send Ether to the contract
    function deposit() public payable {
        // msg.value = amount of Ether sent with the transaction
        balances[msg.sender] += msg.value;
        emit Deposit(msg.sender, msg.value);
    }

    // Withdraw function: allows users to take out Ether from their balance
    function withdraw(uint256 _amount) public {
        require(balances[msg.sender] >= _amount, "Not enough balance");

        // Decrease balance first (security best practice)
        balances[msg.sender] -= _amount;

        // Transfer Ether to the user
        payable(msg.sender).transfer(_amount);

        emit Withdraw(msg.sender, _amount);
    }

    // Function to check the balance of the caller
    function getBalance() public view returns (uint256) {
        return balances[msg.sender];
    }
}
