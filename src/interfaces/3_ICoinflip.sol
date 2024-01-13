// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

interface ICoinFlip {
    function flip(bool _guess) external returns(bool);
    function consecutiveWins() external returns(uint256);
}