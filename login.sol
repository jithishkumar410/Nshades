// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract Login{
     mapping(string => string) public loginData;

function addloginData(string memory _userEmail, string memory _userPassword) external {
      
        loginData[_userEmail] = _userPassword;
    }

    function forgotpassword(string memory _userEmail,string memory _newuserPassword) external {
     
      delete loginData[_userEmail];
      loginData[_userEmail] = _newuserPassword;

    }
    
    function getloginData(string memory _userEmail) public view returns (string memory) {
        
        return loginData[_userEmail];
    }
}
