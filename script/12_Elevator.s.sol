// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Script.sol";
import "../src/interfaces/12_IElevator.sol";
import "../src/12_ElevatorSolution.sol";

contract ElevatorPOCScript is Script {
    IElevator instance = IElevator(INSTANCE);
    
    function run() external {
        vm.startBroadcast();

        assert(!instance.top());

        ElevatorSolution solution = new ElevatorSolution();
        solution.solve();

        assert(instance.top());
        
        vm.stopBroadcast();
    }
}