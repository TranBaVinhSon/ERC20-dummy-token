pragma solidity >=0.4.21 <0.6.0;

import 'zeppelin-solidity/contracts/token/ERC20/StandardToken.sol';
// import "zeppelin-solidity/contracts/token/ERC20/MintableToken.sol";

contract DummyToken is StandardToken {
    string public constant name = "DummyToken";
    string public constant symbol = 'DT';
    uint8 public constant decimals = 2;
    uint constant _initial_supply = 2100000000;

    // constructor
    constructor() public {
        totalSupply_ = _initial_supply;
        balances[msg.sender] = _initial_supply;
        emit Transfer(address(0), msg.sender, _initial_supply);
    }
}