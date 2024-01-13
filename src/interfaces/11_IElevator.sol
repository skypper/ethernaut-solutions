// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

interface IElevator {
    function goTo(uint _floor) external;
    function top() external view returns(bool);
}