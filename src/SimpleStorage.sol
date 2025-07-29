// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract SimpleStorage {
    uint256 public myfavnum;
    struct Person{
        string name;
        uint256 favnum;
    }

    Person[] public listofpeople;
    mapping(string => uint256) public nametofavnum;

    function store(uint256 _myfavnum) public{
        myfavnum = _myfavnum;
    }

    function retrieve() public view returns(uint256){
        return myfavnum;
    }

    function addPerson(string memory _name, uint256 _favnum) public{
        listofpeople.push(Person(_name, _favnum));
        nametofavnum[_name] = _favnum;
    }
}
