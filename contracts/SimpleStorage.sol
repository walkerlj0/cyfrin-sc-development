// SPDX-License-Identifier: MIT
pragma solidity 0.8.19; //. 0.8.18 is a stable solidity version

contract SimpleStorage {
    bool hasFavoriteNumber = false; 
    string favoriteNumberInText = "-`17";
    int256 favoriteInt = 17; // default 1
    address myAddress = 0x1C016C9A15e9Ef085bD0225bc5fa834b114a13e1;
    bytes32 favoriteBytes32 = "dog"; // 0xbcf2518, the hex of bytes, but can be represented by strings

    uint256 public favoriteNumber; // default value is 0
    uint256 public otherNumber;

    function store(uint256 _favoriteNumber)  public {
        favoriteNumber = _favoriteNumber;
        otherNumber = favoriteNumber + 11;
    }
}