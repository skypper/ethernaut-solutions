// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Script.sol";
import "../src/interfaces/26_IDoubleEntryPoint.sol";
import "../src/interfaces/26_IForta.sol";
import "../src/26_DoubleEntryPointSolution.sol";

address constant INSTANCE = 0x5F368B317B4C5124391AcCE18Ac953bFB1F06F04;

contract DoubleEntryPointPOCScript is Script {
    IDoubleEntryPoint instance = IDoubleEntryPoint(INSTANCE);

    function run() external {
        vm.startBroadcast();

        IForta forta = instance.forta();

        DetectionBot detectionBot = new DetectionBot(instance.cryptoVault());
        forta.setDetectionBot(address(detectionBot));

        vm.stopBroadcast();
    }
}
