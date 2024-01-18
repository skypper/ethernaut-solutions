// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

interface IDelegateERC20 {
    function delegateTransfer(address to, uint256 value, address origSender) external returns (bool);
}
