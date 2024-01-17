// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "@oppenzeppelin/contracts/token/ERC20/ERC20.sol";

contract VampireToken is ERC20 {
    constructor(string memory name, string memory symbol, address user, address dex) ERC20(name, symbol) {
        _mint(user, 10);
        _mint(dex, 100);
    }
}
