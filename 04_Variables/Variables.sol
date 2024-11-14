// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/** 
    Variables in Solidity
    1. local
        - declared inside a function
        - not stored on the blockchain
    2. state
        - declared outside a function
        - stored on the blockchain
    3. Global (provides information about the blockchain)

    Extra modificator for variables
    - constant - constants are variables that cannot be modified.
    - immutable - immutable variables can be set inside the constructor but cannot be modified afterwards.
*/

contract Variables {
    // State variables are stored on the blockchain.
    int public immutable x;
    string public text = "Hello";
    uint256 public num = 123;
    int public constant exampleConstans = -123;
    // coding convention to uppercase constant variables
    address public  immutable MY_ADDRESS;
    uint256 public constant MY_UINT = 132312313;

    constructor() {
        MY_ADDRESS = msg.sender;
    }


    function doSomething() public view returns (uint256 o, address y, uint z) {
        // Local variables are not saved to the blockchain.
        uint256 i = 456;

        // Here are some global variables
        uint256 timestamp = block.timestamp; // Current block timestamp
        address sender = msg.sender; // address of the caller
        return (timestamp, sender, i);
    }
}
