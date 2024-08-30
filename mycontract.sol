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

    function mint(address _to, uint _amount) private{
        totalSupply += _amount;
        balanceOf[_to] += _amount;
    }

    function burn(address _from, uint _amount) private{
        totalSupply -= _amount;
        balanceOf[_from] -= _amount;
    }

    function deposit(uint _amount) external{
        
    }

}