// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

interface IAlienCodex {
    function makeContact() external;
    function record(bytes32 _content) external;
    function retract() external;
    function revise(uint256 i, bytes32 _content) external;
}
