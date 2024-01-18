// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "./26_IDelegateERC20.sol";

interface IForta {
    function setDetectionBot(address detectionBotAddress) external;
    function notify(address user, bytes calldata msgData) external;
    function raiseAlert(address user) external;
}
