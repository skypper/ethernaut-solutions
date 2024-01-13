// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

interface IFallback {
    function contribute() external payable;
    function withdraw() external;
    function owner() external view returns (address);
}
