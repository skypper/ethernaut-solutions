// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Test.sol";
import "../src/4_TelephoneSolution.sol";

address constant INSTANCE = 0x81917BB2BA52486d99e3F65eCB2C61e1e8270197;

contract TelephonePOCTest is Test {
    ITelephone instance = ITelephone(INSTANCE);

    function setUp() external {
        vm.label(INSTANCE, "Telephone");
    }

    function test() external {
        vm.startBroadcast();

        assertNotEq(instance.owner(), msg.sender);

        TelephoneSolution solution = new TelephoneSolution(INSTANCE);
        vm.label(address(solution), "Solution");
        solution.solve(msg.sender);

        assertEq(instance.owner(), msg.sender);

        vm.stopBroadcast();
    }
}
