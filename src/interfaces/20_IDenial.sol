// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

interface IDenial {
    function setWithdrawPartner(address _partner) external;
    function withdraw() external;
    function owner() external view returns (address);
}
