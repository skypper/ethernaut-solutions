// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

interface IEngine {
    function initialize() external;
    function upgradeToAndCall(address newImplementation, bytes memory data) external payable;
}
