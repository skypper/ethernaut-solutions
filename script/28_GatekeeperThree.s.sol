// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Script.sol";
import "../src/interfaces/28_IGatekeeperThree.sol";
import "../src/28_GatekeeperThreeSolution.sol";

contract GatekeeperThreePOCScript is Script {
    IGatekeeperThree instance = IGatekeeperThree(INSTANCE);

    function run() external {
        vm.startBroadcast();

        GatekeeperThreeSolution solution = new GatekeeperThreeSolution();
        solution.solve{value: 0.0011 ether}();

        vm.stopBroadcast();

        assert(instance.entrant() == msg.sender);
    }
}
