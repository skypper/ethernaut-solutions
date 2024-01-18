// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Script.sol";
import "../src/interfaces/27_IGoodSamaritan.sol";
import "../src/27_GoodSamaritanSolution.sol";

contract GoodSamaritanPOCScript is Script {
    IGoodSamaritan instance = IGoodSamaritan(INSTANCE);

    function run() external {
        vm.startBroadcast();

        GoodSamaritanSolution solution = new GoodSamaritanSolution();
        solution.solve();

        vm.stopBroadcast();
    }
}
