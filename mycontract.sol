// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
import "./IERC20.sol";
contract Vault{
    IERC20 public immutable token;
    uint public totalSupply;
    mapping(address => uint) public balanceOf;

    constructor(address _token){
        token = IERC20(_token);
    }

}