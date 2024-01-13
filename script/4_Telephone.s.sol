// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Script.sol";
import "../src/interfaces/4_ITelephone.sol";
import "../src/4_TelephoneSolution.sol";

address constant INSTANCE = 0x81917BB2BA52486d99e3F65eCB2C61e1e8270197;

contract TelephonePOCScript is Script {
    function run() external {
        vm.startBroadcast();

        TelephoneSolution solution = new TelephoneSolution(INSTANCE);
        solution.solve(msg.sender);

        vm.stopBroadcast();
    }
}