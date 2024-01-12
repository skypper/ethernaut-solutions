// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Test.sol";
import "../src/interfaces/10_IKing.sol";
import "../src/10_KingSolution.sol";

contract KingPOCTest is Test {
    IKing instance = IKing(INSTANCE);

    function setUp() external {
        vm.label(INSTANCE, "King");
    }

    function test() external {
        vm.startBroadcast();

        KingSolution solution = new KingSolution();
        solution.solve();
        address king = address(uint160(uint256(vm.load(INSTANCE, 0x0000000000000000000000000000000000000000000000000000000000000000))));
        assertEq(king, address(solution));

        (bool success, ) = address(INSTANCE).call{value: instance.prize() + 1}("");
        assertFalse(success);

        vm.stopBroadcast();
    }
}