// contracts/Box.sol
// SPDX-License-Identifier: MIT
pragma solidity >0.4.24;

import "openzeppelin-solidity/contracts/crowdsale/Crowdsale.sol";

contract BlackHoleTokenCrowdsale is Crowdsale {

  constructor(
    uint256 _rate,
    address _wallet,
    ERC20 _token
  )
    Crowdsale(_rate, _wallet, _token)
    public
  {

  }
}