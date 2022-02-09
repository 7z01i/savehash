
pragma solidity >=0.7.0 <0.9.0;

contract SaveHash {
    struct info {
        bytes32 Hash;
        string url;
    }
    mapping(uint => info) private Hashes; // mapping(keytype=> ValueType)

    uint initialNumber=1000;



//Function 1:
//Save Hash with Transaction + transmit pin to A +mapping

    function saveHash(bytes32 s_Hash, string memory s_url) public returns (uint) {
        initialNumber=initialNumber+1;
        Hashes[initialNumber] = info(s_Hash, s_url);
        return initialNumber;
    }

// Function last:
// check the 2 hashes
// need to add condition to be sure hashToVerify right format ?
    function checkHash(uint num, bytes32 hashToVerify)public view returns (string memory) {
	    if (Hashes[num].Hash== hashToVerify){
		    return Hashes[num].url;
        }
       else{
	       return "false";
       }
   }

}