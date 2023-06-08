// SPDX-License-Identifier: MIT
pragma solidity 0.8.19; //stating our version

contract SimpleStorage {
    uint256 myFavoriteNumber;

    struct Person{
        uint256 favoriteNumber; //State variables hold values that persist across function calls and are stored permanently on the blockchain
        string name;
    }

    Person[] public listofPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public{ //underscore prefix to indicate that it is a local variable within the function
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve()  public view returns(uint256){
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listofPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}