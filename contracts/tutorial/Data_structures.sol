/** 
* SPDX-License-Identifier: MIT
* @title Data Structures
* @dev Implements a basic Contract
*/

pragma solidity >=0.7.0 <0.9.0;

contract MyContract {

    /*Enumerations*/
    enum State {Waiting, Ready, Active}
    State public state;

    /*Array of Structs*/
    Person[] public people;
    uint256 public peopleCount;
    struct Person {
        string _firstName;
        string _lastName;
    }

    /*Enumerations*/
    constructor() public {
        state = State.Waiting;
    }

    function activate() public {
        state = State.Active;
    }

    function isActive() public view returns(bool) {
        return state == State.Active;

    }

    /*Array of Structs*/
    function addPerson(string memory _firstName, string memory _lastName) public {
        people.push(Person(_firstName, _lastName));
        peopleCount += 1;

    }


}