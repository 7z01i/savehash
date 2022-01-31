// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract SaveHash {
    mapping(string => uint) public Hashes;



//Function 1:
//Save Hash with Transaction

function set(string name, uint hash) private {
        Hashes[name] = hash;
    }

//Function 2: call Hash by Name
function get(string name) public view returns (uint) {
        // Mapping always returns a value.
        // If the value was never set, it will return the default value.
        return Hashes[name];
    }

}