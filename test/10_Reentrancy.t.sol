// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Test.sol";
import "../src/interfaces/10_IReentrancy.sol";
import "../src/10_ReentrancySolution.sol";

contract ReentrancyPOCTest is Test {
    function setUp() external {
        vm.label(INSTANCE, "Reentrancy");
    }

    function test() external {
        vm.startBroadcast();

        ReentrancySolution solution = new ReentrancySolution();
        solution.solve{value: address(INSTANCE).balance}();

        assertEq(address(INSTANCE).balance, 0);

        vm.stopBroadcast();
    }
}