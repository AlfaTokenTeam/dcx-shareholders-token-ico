pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract DCXShareholdersToken is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function DCXShareholdersToken(address _owner)  UpgradeableToken(_owner) {
    name = "DCXShareholdersToken";
    symbol = "DST";
    totalSupply = 2000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}