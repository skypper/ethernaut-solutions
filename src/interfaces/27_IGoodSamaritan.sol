// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

interface IGoodSamaritan {
    function requestDonation() external returns (bool enoughBalance);
}
