// SPDX-License-Identifier: GPL-3.0-only

pragma solidity 0.8.24;

import "../Interfaces/IResult.sol";

contract AdditionContract {
    // Variables
    address private resultAddress;

    // Constructor
    constructor(address resultAddress_) {
        resultAddress = resultAddress_;
    }

    // Functions

    // Externals
    function add(uint num1_, uint num2_) external {
        IResult(resultAddress).setResult(num1_ + num2_);
    }

    function setFee(uint fee_) external {
        IResult(resultAddress).setFee(fee_);
    }
}