// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;
pragma solidity ^0.8.0;

contract PaymentContract {

  
 

  
  function pay() external payable {
  
  }
  
  function balance() external view returns(uint){
      return address(this).balance;
  }

