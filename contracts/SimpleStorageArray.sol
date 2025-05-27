// SPDX-License-Identifier: MIT
pragma solidity 0.8.19; //. 0.8.18 is a stable solidity version

contract SimpleStorage {
    uint256 public myFavoriteNumber; // default value is 0
    // uint256[] listOfFavoriteNumbers;
    struct Person{
        uint256 favoriteNumber;
        string name;
    }
    // Person public myFemaleFriend = Person(17, "Claire");
    // Person public myMaleFriend = Person({favoriteNumber: 25, name: "Tom"});

    // dynamic array can grow & shrink (no set size)
    Person[] public listOfPeople;


    function store(uint256 _favoriteNumber)  public {
        myFavoriteNumber = _favoriteNumber;
        retrieve(); // this will cost gas as it's being called from a gas-calling function
    }

    // pure and view don't cost gas/ do anything on-chain. neither can update state, and view can't even read state
    function retrieve() public view returns(uint256){
        return myFavoriteNumber;

    } 

    function addPerson(string memory _name, uint256 _favorieNumber) public{
        // Person memory newPerson = Person(_favorieNumber, _name);
        // listOfPeople.push();
        listOfPeople.push(Person(_favorieNumber, _name)); //Person is created before the push func is executed
    }