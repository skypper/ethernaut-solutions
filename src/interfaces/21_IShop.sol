// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

interface IShop {
    function buy() external;
    function isSold() external view returns (bool);
    function price() external view returns (uint256);
}
