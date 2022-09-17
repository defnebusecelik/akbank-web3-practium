pragma solidity ^0.8.7;
// SPDX-License-Identifier: MIT

contract FeeCollector { 
 // Define the state variables for the owner and balance.
    address public owner;
    uint256 public balance;
    
    constructor() {
        owner = msg.sender; 
    }
    
    receive() payable external {
     // Contract accept the ethers and deposit balance.
        balance += msg.value; 
    }
    
    
    function withdraw(uint amount, address payable destAddr) public {
      // Use require to only allow the owner to withdraw
        require(msg.sender == owner, "Only owner can withdraw");
        require(amount <= balance, "Insufficient funds");
        
        // Define destAddr as payable to transact.
        destAddr.transfer(amount);
        balance -= amount;
    }
}
