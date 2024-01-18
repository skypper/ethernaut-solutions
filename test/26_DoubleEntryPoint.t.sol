// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Test.sol";
import "../src/interfaces/26_ICryptoVault.sol";
import "../src/interfaces/26_IDoubleEntryPoint.sol";
import "../src/interfaces/26_IForta.sol";
import "../src/interfaces/26_ILegacyToken.sol";
import "../src/26_DoubleEntryPointSolution.sol";
import "@oppenzeppelin/contracts/access/Ownable.sol";

address constant INSTANCE = 0x5F368B317B4C5124391AcCE18Ac953bFB1F06F04;

contract DoubleEntryPointPOCTest is Test {
    IDoubleEntryPoint instance = IDoubleEntryPoint(INSTANCE);

    function setUp() external {
        vm.label(INSTANCE, "DoubleEntryPoint");
        vm.label(instance.cryptoVault(), "CryptoVault");
        vm.label(address(instance.forta()), "Forta");
        vm.label(instance.delegatedFrom(), "LegacyToken");
    }

    function test() external {
        // vm.startBroadcast();

        IForta forta = instance.forta();
        address cryptoVault = instance.cryptoVault();

        DetectionBot detectionBot = new DetectionBot(cryptoVault);
        vm.label(address(detectionBot), "DetectionBot");
        forta.setDetectionBot(address(detectionBot));

        ILegacyToken legacyToken = ILegacyToken(instance.delegatedFrom());
        vm.prank(Ownable(address(legacyToken)).owner());
        legacyToken.delegateToNewContract(IDelegateERC20(INSTANCE));

        vm.expectRevert("Alert has been triggered, reverting");
        ICryptoVault(cryptoVault).sweepToken(IERC20(address(legacyToken)));

        // vm.stopBroadcast();
    }
}
