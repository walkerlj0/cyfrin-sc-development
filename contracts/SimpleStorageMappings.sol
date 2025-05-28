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

    function addPerson(string memory _name, uint256 _favorieNumber) public{
        _name = "Linus";
        listOfPeople.push(Person(_favorieNumber, _name)); 
    }
}