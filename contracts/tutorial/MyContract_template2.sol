/** 
* SPDX-License-Identifier: MIT
* @title MyContract2
* @dev Implements a basic Contract
*/

pragma solidity >=0.7.0 <0.9.0;

contract MyContract {
    string public value = "myValue";

    function set (string memory _value) public {
        value = _value;

    }

}