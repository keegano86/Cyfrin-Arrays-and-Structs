// SPDX-License-Identifier: MIT
pragma solidity 0.8.24; //solidity versions

contract SimpleStorage {
    // favoriteNumber gets initialized to 0 if no value

    uint256  myFavoriteNumber; //0

    //uint[] listOfFavoriteNumbers; // [0, 78, 90]
    struct Person {
        uint256 favoriteNumber;
        string name;
    } 
    // dynamic array
    Person[] public listOfPeople; // []

    // Person public pat = Person({favoriteNumber: 7, name: "Pat"});
    // Person public mariah = Person({favoriteNumber: 16, name: "Mariah"});
    // Person public jon = Person({favoriteNumber: 12, name: "Jon"});
    // 0. 1. 2

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    // view, pure
    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }

    // calldata, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
        //Person memory newPerson = Person(_favoriteNumber, _name); 
        // listOfPeople.push()
    }
}
