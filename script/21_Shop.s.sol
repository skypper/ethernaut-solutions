// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Script.sol";
import "../src/21_Shop.sol";
import "../src/interfaces/21_IShop.sol";

contract DenialPOCScript is Script {
    IShop instance = IShop(INSTANCE);

    function run() external {
        vm.startBroadcast();

        ShopSolution solution = new ShopSolution();
        solution.solve();

        vm.stopBroadcast();

        assert(instance.isSold() && instance.price() < 100);
    }
}
