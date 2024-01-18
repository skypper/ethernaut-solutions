// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

interface IDetectionBot {
    function handleTransaction(address user, bytes calldata msgData) external;
}
