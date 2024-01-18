// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/interfaces/IERC20.sol";

interface ICryptoVault {
    function sweepToken(IERC20 token) external;
}
