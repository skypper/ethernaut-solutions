// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "./26_IForta.sol";

interface IDoubleEntryPoint {
    function cryptoVault() external view returns (address);
    function delegatedFrom() external view returns (address);
    function forta() external view returns (IForta);
}
