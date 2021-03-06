require('babel-register');
require('babel-polyfill');
require('dotenv').config();
const HDWalletProvider = require('truffle-hdwallet-provider');

module.exports = {
  presets: ['@babel/preset-env'],
  networks: {
    development: {
      host: 'localhost',
      port: 8545,
      network_id: '4447', // eslint-disable-line camelcase
    },    
    ropsten: {
      provider: function() {
        return new HDWalletProvider(
          process.env.MNEMONIC,
          `https://ropsten.infura.io/${process.env.INFURA_API_KEY}`
        )
      },
      gas: 5000000,
      gasPrice: 25000000000,
      network_id: 3
    }
  },
  compilers: {    
    solc: {      
      version: "^0.4.24",     // Fetch exact version from solc-bin (default: truffle's version) 
      docker: false,
      parser: "solcjs",
      optimizer: {
        enabled: true,
        runs: 200
      },      
    }
  }
};

