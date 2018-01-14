pragma solidity ^0.4.18;
import "zeppelin-solidity/contracts/token/MintableToken.sol";

contract ArayaCoin is MintableToken {
  string public name = "ARAYA COIN";
  string public symbol = "ARY";
  uint8 public decimals = 18;
}
