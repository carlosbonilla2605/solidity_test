/** 
* SPDX-License-Identifier: MIT
* @title HelloWorld
* @dev Implements the hello worrld program
*/

pragma solidity >=0.7.0 <0.9.0;
contract HelloWorld {
    string public helloworld = "Hello World";
    uint a = 1;
    function justHelloWorld() public view returns(string memory){
        return helloworld;
    }
    function showHelloWorld(string memory me) public payable returns(string memory x){
        string memory result = string(abi.encodePacked(helloworld, " from ", me));
        helloworld = result;
        //uint result2 = a + 1;
        return result;
    }
}