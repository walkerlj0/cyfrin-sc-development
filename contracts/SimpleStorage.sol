// SPDX-License-Identifier: MIT
pragma solidity 0.8.19; //. 0.8.18 is a stable solidity version

contract SimpleStorage {
    uint256 public favoriteNumber; // default value is 0
    uint256 public otherNumber;

    function store(uint256 _favoriteNumber)  public {
        favoriteNumber = _favoriteNumber;
        retrieve(); // this will cost gas as it's being called from a gas-calling function
    }

    // pure and view don't cost gas/ do anything on-chain. neither can update state, and view can't even read state
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    } 
}