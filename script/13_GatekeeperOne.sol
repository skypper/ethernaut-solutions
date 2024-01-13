// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Script.sol";
import "../src/interfaces/13_IGatekeeperOne.sol";
import "../src/13_GatekeeperOne.sol";

contract GatekeeperOnePOCScript is Script {
    IGatekeeperOne instance = IGatekeeperOne(INSTANCE);

    function run() external {
        vm.startBroadcast();

        assert(instance.entrant() == address(0));

        GatekeeperOneSolution solution = new GatekeeperOneSolution();
        solution.solve();

        assert(instance.entrant() != address(0));

        vm.stopBroadcast();
    }
}