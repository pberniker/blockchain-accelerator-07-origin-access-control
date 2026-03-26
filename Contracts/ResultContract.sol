// SPDX-License-Identifier: GPL-3.0-only

pragma solidity 0.8.24;

import "../Interfaces/IResult.sol";

contract ResultContract is IResult {
    // Variables
    uint public result;

    // Functions

    // Externals
    function setResult(uint result_) external {
        result = result_;
    }
}