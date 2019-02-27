pragma solidity >=0.4.21 <0.6.0;

import 'zeppelin-solidity/contracts/token/ERC20/StandardToken.sol';

// rewrite DummyToken to handle ERC20 tokens.
contract DummyTokenFaucet {
  StandardToken public DummyToken;
  address public DTOwner;

  function DummyTokenFaucet(address _DToken, address _DTOwner) public {
    DummyToken = StandardToken(_DToken);
    DTOwner = _DTOwner;
  }

  function withdraw(uint withdraw_amount) public {
    require(withdraw_amount <= 100000000000000000);
    DummyToken.transferFrom(DTOwner, msg.sender, withdraw_amount);
  }

  function () public payable {}
}