// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.6.0 <0.9.0;

contract SimpleStorage {

    // types
   // uint256 favoriteNumber = 5;
    // bool favoriteBool = true;
    // string favoriteString = "a string";
    // int256 favoriteInt = -5;
    // address favoriteAddress = 0x0c769EDE18bf11389A106f462095d33D1339d5d0;
    // bytes32 favoriteBytes = "dog"; 
    uint256 public favoriteNumber;
    bool favoriteBool;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;

    //People public person = People({favoriteNumber: 2, name: "Jake"});

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    //storage = bytes stored "forever" memory = bytes only when executed
    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        people.push(People(_favoriteNumber, _name));
    }
}