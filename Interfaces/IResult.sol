// SPDX-License-Identifier: GPL-3.0-only

pragma solidity 0.8.24;

interface IResult {
    function setResult(uint result_) external;
    function setFee(uint fee_) external;
}