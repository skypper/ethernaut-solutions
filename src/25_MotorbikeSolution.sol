// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

contract MotorbikeSolution {
    function destroy() external {
        selfdestruct(payable(tx.origin));
    }
}
