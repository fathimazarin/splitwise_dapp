pragma solidity ^0.5.0;

contract splitwise{
    
    struct Person{
        string name;
        uint owed;
        uint borrowed;
        uint[] account;
    }
    
    Person[] directory;
    
    function addperson(uint name) public {
        uint[] newarray;
        for (uint i=0; i <= directory.length; i++){
            newarray[i] = 0;
        }
        directory.push(Person(name, 0, 0, newarray));
    }
    
    function pay(uint fromid, uint toid, uint amount) {
        //transaction_id = keccak256(fromid, toid, amount);
        require((authorize(fromid) == 1) && (authorize(toid) == 1));
    }
    
    
}