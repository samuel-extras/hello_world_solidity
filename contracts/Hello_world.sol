// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract HelloWorld {
    address public owner;
    string public _studentName;
    string public greetingTime;

    constructor(){
        owner = msg.sender;
    }
    function getStudentName(string memory studentName) public{
        _studentName = studentName;
    }
    
    function getGreetingTime() public {
        ((block.timestamp + 3600) % 86400 < 43200)
         ?   greetingTime = "Good Morning "

        
        : ((block.timestamp + 3600) % 86400 >= 43200 || (block.timestamp + 3600) % 86400 <= 57600)

        ? greetingTime = "Good afternoon "  : greetingTime = "Good evening ";
    }


    function greetStudent ()public view returns (string memory ) {
      return  string(abi.encodePacked(greetingTime, _studentName)); 
    }

}