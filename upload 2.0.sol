// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;
 
import "https://github.com/0xcert/ethereum-erc721/src/contracts/tokens/nf-token-metadata.sol";
import "https://github.com/0xcert/ethereum-erc721/src/contracts/ownership/ownable.sol";
 
contract Data is NFTokenMetadata {
 mapping(uint=>PostData) public post;      
 mapping(string => mapping(uint=>PostData)) public uData;

   struct PostData { 
      
      uint time;
      string imageHashValue;
      string password;
      string  _username;
      uint nftquantity;

   }
   function addPost(string memory _username, uint _time,string memory _imageHashValue,string memory _password,uint _nftquantity) public{
      uData[_username][_time]=PostData(_time,_imageHashValue,_password,_username,_nftquantity);
      }
  

}
