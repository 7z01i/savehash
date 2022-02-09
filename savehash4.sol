// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract SaveHash {
    struct info {
        bytes32 pin;
        bytes32 Hash;
        string url;
    }
    mapping(uint => info) private Hashes; // mapping(keytype=> ValueType)

    uint iNum=1000;
    event getiNum (uint iNum);


//Function 1:
//Save Hash with Transaction + transmit pin to A +mapping

    function saveHash(string memory s_pin, bytes32 s_Hash, string memory s_url) public returns (uint) {
        iNum += 1;
        Hashes[iNum] = info(keccak256(abi.encodePacked(s_pin)), s_Hash, s_url);
        emit getiNum (iNum);
        return iNum;
    }
// Funktion 2

    function getUrl(uint num, string memory v_pin) public view returns (string memory) {
	    if (Hashes[num].pin==keccak256(abi.encodePacked(v_pin))){
		    return (Hashes[num].url);
        }
       else{
	       return ("false");
       }
   }

// Function 3:
// check the 2 hashes
    function checkHash(uint num, string memory v_pin, bytes32 hashToVerify) public view returns (string memory) {
	    if (Hashes[num].pin==keccak256(abi.encodePacked(v_pin))){
            if (Hashes[num].Hash== hashToVerify){
		        return ("True");
            }
		    else {
                return ("Wrong Hash");
            }
        }
       else{
	       return ("Wrong password");
       }
   }
}