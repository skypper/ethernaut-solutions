// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

interface IPrivacy {
    function unlock(bytes16 _key) external;
    function locked() external returns(bool);
}