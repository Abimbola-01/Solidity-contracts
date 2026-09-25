// SPDX-License-Identifier: MIT
pragma solidity 0.8.24; // this is the solidity version 

contract SimpleStorage {
    // basic type of variables boolean, uint, int, adress, byte
    uint256 public myfavoriteNumber;
    uint256 [] ListOfFavoriteNumbers;

    struct Person{
        uint256 favoriteNumber;
        string name;
    }
    Person[] public ListOfPeople;
    // favorite number gets initialized to 0 if no number is given.
    mapping (string => uint256) public nameToFavoriteNumber;


    function store(uint256 _favoriteNumber) public virtual{
        myfavoriteNumber = _favoriteNumber;
        

    } // after each public or private use. curly brackets
    // i think after each function its usually a parentheses and each contract a curly bracket
    // whatever is inside the parentheses is what we are goikng to add or send to our function

    function retrieve () public view returns (uint256){
        return myfavoriteNumber;
    }
    //calldata, memory, storage
   function addPerson(string memory _name, uint256 _favoriteNumber) public {
        ListOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
        }
}
contract SimpleStorage2 {}

contract SimpleStorage3 {}

contract SimpleStorage4 {}