/** 
* SPDX-License-Identifier: MIT
* @title Mapping Example
* @dev Implements a basic Contract
*/

pragma solidity >=0.7.0 <0.9.0;

contract MyContract {
    /*Mapping*/
    uint256 public peopleCount = 0;
    mapping(uint => Person) public people;

    /*Ownership is required to add people*/
    address owner;

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    struct Person {
        uint _id;
        string _firstName;
        string _lastName;
    }

    constructor() {
        owner = msg.sender;
    }

    function addPerson(string memory _firstName, string memory _lastName) public onlyOwner{
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }

    function incrementCount() internal {
        peopleCount += 1;
    }

}