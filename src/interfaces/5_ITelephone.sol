// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

interface ITelephone {
    function changeOwner(address _owner) external;
    function owner() external returns(address);
}