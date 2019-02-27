const DummyToken = artifacts.require("DummyToken");
const DummyTokenFaucet = artifacts.require("DummyTokenFaucet");
const owner = web3.eth.accounts[0];

module.exports = function(deployer) {
  console.log(owner);
  deployer.deploy(DummyToken, {from: owner}).then(function(){
    return deployer.deploy(DummyTokenFaucet, DummyToken.address, owner)
  });
}