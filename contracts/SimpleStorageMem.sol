// SPDX-License-Identifier: MIT
pragma solidity 0.8.19; //. 0.8.18 is a stable solidity version

contract SimpleStorage {
    //implicitly storage var, declared outside a func
    uint256 public myFavoriteNumber; // default value is 0
    // uint256[] listOfFavoriteNumbers;
    struct Person{
        uint256 favoriteNumber;
        string name;
    }
    Person[] public listOfPeople;


    function store(uint256 _favoriteNumber)  public {
        myFavoriteNumber = _favoriteNumber;
        retrieve();
    }
    function retrieve() public view returns(uint256){
        return myFavoriteNumber;

    } 

    // calldata, memory, storage variables 
    // The _name var is only accessible when func is called if ver is calldata or memory - temporary
    // memory data can be changed, calldata only created onced
    // storage is permanent data that can be modified. Can't make a func var storage
    //arrays, structs, and types are specialy types, need declarations. A string is actually a type of array, ergo needs type
    function addPerson(string memory _name, uint256 _favorieNumber) public{
        _name = "Linus";
        listOfPeople.push(Person(_favorieNumber, _name)); //Person is created before the push func is executed
    }
}