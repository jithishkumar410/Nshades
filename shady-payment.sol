// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
contract PaymentContract {
address public admin;
IERC20 public  Shady;



event PaymentDetails(
  address payer,
  uint amt,
  uint paymentid,
  uint date
);



constructor(address adminaddress,address shadyaddress){
 admin = adminaddress;
 Shady = IERC20( shadyaddress);
}



function payment(uint amt,uint paymentid) external{
  Shady.transferFrom(msg.sender,admin,amt);
  emit PaymentDetails(msg.sender,amt,paymentid,block.timestamp);
}


}
