// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

interface IDex2 {
    function swap(address from, address to, uint256 amount) external;
    function token1() external view returns (address);
    function token2() external view returns (address);
    function balanceOf(address token, address account) external view returns (uint256);
}
