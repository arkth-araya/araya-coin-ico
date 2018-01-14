const ArayaCoinCrowdsale = artifacts.require("./ArayaCoinCrowdsale.sol")

module.exports = function(deployer, network, accounts) {
  const startTime = web3.eth.getBlock(web3.eth.blockNumber).timestamp + 1 // one second in the future
  const endTime = startTime + (60 * 10) // 10 minutes
  const rate = new web3.BigNumber(1000)
  const wallet = accounts[0]

  deployer.deploy(ArayaCoinCrowdsale, startTime, endTime, rate, wallet)
};
