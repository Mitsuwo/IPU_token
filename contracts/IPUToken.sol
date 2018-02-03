pragma solidity ^0.4.18;
import 'zeppelin-solidity/contracts/token/ERC20/StandardToken.sol';

contract IPUToken is StandardToken {
  string public name = "IPUToken";
  string public symbol = "IPUT";
  uint public decimals = 18;
  address public owner;
  uint256 public totalSupply;
  uint public maxSupply;

  function IPUToken(uint _initialSupply, uint _maxSupply) public {
  	owner = msg.sender;
  	totalSupply = _initialSupply;
  	maxSupply = _maxSupply;
  	balances[msg.sender] = _initialSupply;
  }

  function addTotalSupply(uint256 _value) public {
  	require(owner == msg.sender);
  	require(maxSupply >= (totalSupply + _value));

  	totalSupply += _value;
  	balances[msg.sender] += _value;
  }
}
