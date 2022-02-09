
pragma solidity >=0.7.0 <0.9.0;

contract SaveHash {
    struct info {
        bytes32 pin;
        bytes32 Hash;
        string url;
    }
    mapping(uint => info) private Hashes; // mapping(keytype=> ValueType)

    uint initialNumber=1000;



//Function 1:
//Save Hash with Transaction + transmit pin to A +mapping

    function saveHash(string memory s_pin, bytes32 s_Hash, string memory s_url) public returns (uint) {
        initialNumber=initialNumber+1;
        Hashes[initialNumber] = info(keccak256(abi.encodePacked(s_pin)), s_Hash, s_url);
        return initialNumber;
    }

// Function last:
// check the 2 hashes
// need to add condition to be sure hashToVerify right format ?
    function checkHash(uint num, string memory v_pin) public view returns (string memory, bytes32) {
	    if (Hashes[num].pin==keccak256(abi.encodePacked(v_pin))){
		    return (Hashes[num].url, Hashes[num].Hash);
        }
       else{
	       return ("false", 0);
       }
   }

}