// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; //. 0.8.18 is a stable solidity version

contract SimpleStorage {
    //implicitly storage var, declared outside a func
    uint256 public myFavoriteNumber; // default value is 0
    // uint256[] listOfFavoriteNumbers;
    struct Person{
        uint256 favoriteNumber;
        string name;
    }
    Person[] public listOfPeople;

    // look up a name and see corresponding fav number
    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber)  public {
        myFavoriteNumber = _favoriteNumber;
        retrieve();
    }
    function retrieve() public view returns(uint256){
        return myFavoriteNumber;

    } 

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        //maps name to associated number [] imply key 
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}