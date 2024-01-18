// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "./26_IDelegateERC20.sol";

interface ILegacyToken {
    function delegateToNewContract(IDelegateERC20 newContract) external;
}
