// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

// Here is a simple contract that you can get, increment and decrement the count stored in this contract.

contract Counter {
    uint256 private count;

    // Function to get the current count
    function get() public view returns (uint256) {
        return count;
    }

    // Function to increment count by 1
    function inc() public {
        count += 1;
    }

    // Function to decrement count by 1
    function dec() public {
        // This function will fail if count = 0
        count -= 1;
    }
}
