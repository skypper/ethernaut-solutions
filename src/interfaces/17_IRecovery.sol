// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

interface ISimpleToken {
    function destroy(address payable _to) external;
}
