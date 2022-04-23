// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "./SimpleStorage.sol";

contract StorageFactory{

    SimpleStorage[] public simpleStorages;
    
    function createSimpleStorageContract() public{
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorages.push(simpleStorage);
    }

    function StorageFactoryStore(uint _simpleStorageIndex, uint _simpleStorageNumber) public{
        SimpleStorage(address(simpleStorages[_simpleStorageIndex])).store(_simpleStorageNumber);
    }

    function StorageFactoryGET(uint _simpleStorageIndex) public view returns(uint){
        return SimpleStorage(address(simpleStorages[_simpleStorageIndex])).retrieve();
    }

}