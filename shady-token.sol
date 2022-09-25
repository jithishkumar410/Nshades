// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract Shady is ERC20{
    constructor() ERC20 ("Shady","SDT"){
    _mint(msg.sender,1000*(10**18));
    }
}
