pragma solidity ^0.4.18;
import "zeppelin-solidity/contracts/token/StandardToken.sol";

contract IPUCoin is StandardToken {
  string public name = "IPUToken";
  string public symbol = "IPUT";
  uint public decimals = 18;

}
