// SPDX-License-Identifier: GPL-3.0-only

pragma solidity 0.8.24;

import "../Interfaces/IResult.sol";

contract ResultContract is IResult {
    // Variables
    address adminAddress;
    uint public result;
    uint public fee = 10;

    // Construct
    constructor(address adminAddress_) {
        adminAddress = adminAddress_;
    }

    // Functions

    // Externals
    function setResult(uint result_) external {
        result = result_;
    }

    function setFee(uint fee_) external {
        if (tx.origin != adminAddress) {
            revert();
        }
        
        fee = fee_;
    }    
}