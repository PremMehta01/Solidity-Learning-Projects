// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {
    uint public favoriteNumber;

    struct People {
        uint favoriteNumber;
        string name;
    }

    People[] public people;
    mapping(string => uint) public nameToFavoriteNumber;

    function store(uint _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint){
        return favoriteNumber;
    }

    function addPeople(string memory _name, uint _favoriteNumber) public {
        people.push(People({favoriteNumber: _favoriteNumber, name: _name}));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}