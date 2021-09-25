pragma solidity 0.4.24;

import "openzeppelin-solidity/contracts/token/ERC20/DetailedERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

contract BlackHoleToken is StandardToken, DetailedERC20 {
    constructor(string _name, string _symbol, uint8 _decimals)
        DetailedERC20(_name, _symbol, _decimals)
        public
    {

    }
}

// pragma solidity 0.4.24;

// import "openzeppelin-solidity/contracts/token/ERC20/MintableToken.sol";
// import "openzeppelin-solidity/contracts/token/ERC20/PausableToken.sol";

// contract BlackHoleToken is MintableToken, PausableToken, DetailedERC20 {
//     constructor(string _name, string _symbol, uint8 _decimals)
//         DetailedERC20(_name, _symbol, _decimals)
//         public
//     {

//     }
// }