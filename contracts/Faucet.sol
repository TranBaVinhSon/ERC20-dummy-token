pragma solidity >=0.4.21 <0.6.0;

// Faucet is contract address: 0x84bf1cca3a7cd1B543485699734B2872C29cD8EB
contract Faucet {
  function withdraw(uint withdraw_amount) public {
    require(withdraw_amount <= 100000000000000000);
    msg.sender.transfer(withdraw_amount);
  }

  function () public payable {}
}