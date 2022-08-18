// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;
 
import "https://github.com/0xcert/ethereum-erc721/src/contracts/tokens/nf-token-metadata.sol";
import "https://github.com/0xcert/ethereum-erc721/src/contracts/ownership/ownable.sol";
 
contract Data is NFTokenMetadata {
       
 mapping(string=>postData) public post;

   struct postData { 
      
      uint time;
      string imageHashValue;
      string password;
      uint nftAmount;

   }
   function addPost(string memory _user, 
      uint _time,
      string memory _imageHashValue,
      string memory _password,
      uint _nftAmount) public{
      post[_user]=postData(_time,_imageHashValue,_password,_nftAmount);
      }
 

}
