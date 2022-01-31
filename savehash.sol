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