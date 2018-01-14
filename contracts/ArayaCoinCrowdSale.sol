pragma solidity ^0.4.18;

import './ArayaCoin.sol';
import 'zeppelin-solidity/contracts/crowdsale/Crowdsale.sol';


contract ArayaCoinCrowdsale is Crowdsale {

  function ArayaCoinCrowdsale(uint256 _startTime, uint256 _endTime, uint256 _rate, address _wallet) public 
    Crowdsale(_startTime, _endTime, _rate, _wallet) {
  }

  function createTokenContract() internal returns (MintableToken) {
    return new ArayaCoin();
  }

}
