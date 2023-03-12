/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */

const { BN, expectRevert, expectEvent } = require("@openzeppelin/test-helpers");
const { expect } = require("chai");
const Transactions = artifacts.require("Transactions");

contract("Transactions", function (accounts) {
  it("Should store the value 89", async () => {
    const Transactions = await Transactions.deployed();
  });
});
