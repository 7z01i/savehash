// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract SaveHash {
    mapping(byte => uint) public Hashes;

    private byte pin;
    pin=0;

//Function 1:
//Save Hash with Transaction

function set(uint hash) private {
        pin = pin +1;
        Hashes[pin] = hash;
    }

//Function 2: call Hash by Name
function get(string pin) public view returns (uint) {
        return Hashes[name];
    }

}
--------------- basic version: 
WORKS

pragma solidity >=0.7.0 <0.9.0;

contract SaveHash {
    
    mapping( uint => bytes32) public Hashes; // mapping(keytype=> ValueType)

    uint initialNumber=1000;

    

//Function 1:
//Save Hash with Transaction +mapping+transmit pin to A

    function saveHash( bytes32 Hash ) public returns (uint){
        initialNumber=initialNumber+1;
        Hashes[initialNumber] = Hash ;
        return initialNumber;
    }

// Function last:
// check the 2 hashes
// need to add condition to be sure hashToVerify right format ?
    function checkHash(uint initialNumber, bytes32 hashToVerify)public view returns (bool ) {
	    if (Hashes[initialNumber]== hashToVerify){
		    return true;
        }
       else{
	       return false;
       }
   }

}




-------Version with mapping: key--> hash, Url: 
NOT WORKING: HELP

pragma solidity >=0.7.0 <0.9.0;

contract SaveHash {
    struct MyStruct {
        bytes32 Hash;
        string url;
    }
    mapping( uint => Mystruct) public Hashes; // mapping(keytype=> ValueType)
    
    uint initialNumber=1000;

    

//Function 1:
//Save Hash with Transaction + transmit pin to A +mapping

    function saveHash( bytes32 Hash, string memory url) public returns (uint){
        initialNumber=initialNumber+1;
        Hashes[initialNumber] = (Hash, url) ;
        return initialNumber;
    }

// Function last:
// check the 2 hashes
// need to add condition to be sure hashToVerify right format ?
    function checkHash(uint initialNumber, bytes32 hashToVerify)public view returns (bool ) {
	    if (Hashes[initialNumber](0)]== hashToVerify){
		    return true;
        }
       else{
	       return false;
       }
   }

}
