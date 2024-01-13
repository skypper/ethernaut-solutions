// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

interface IReentrancy {
    function donate(address _to) external payable;
    function withdraw(uint _amount) external;
    function balanceOf(address _who) external view returns(uint256 balance);
}