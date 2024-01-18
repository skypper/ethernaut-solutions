// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "./interfaces/26_IDetectionBot.sol";
import "./interfaces/26_IForta.sol";

contract DetectionBot is IDetectionBot {
    address _cryptoVault;

    constructor(address cryptoVault) {
        _cryptoVault = cryptoVault;
    }

    function handleTransaction(address user, bytes calldata msgData) external {
        address origSender;
        assembly {
            // origSender := mload(add(msgData.offset, 0x50))
            origSender := calldataload(0xa8)
        }

        if (origSender == _cryptoVault) {
            IForta(msg.sender).raiseAlert(user);
        }
    }
}
