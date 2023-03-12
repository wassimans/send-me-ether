const Transactions = artifacts.require("Transactions.sol");

module.exports = function (_deployer) {
  _deployer.deploy(Transactions);
};
