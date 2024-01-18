// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

interface IGatekeeperThree {
    function construct0r() external;
    function enter() external;
    function createTrick() external;
    function getAllowance(uint256 _password) external;
    function entrant() external view returns (address);
}
