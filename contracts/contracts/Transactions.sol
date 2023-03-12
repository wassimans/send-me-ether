// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;

contract Transactions {
    uint256 transactionCount;
    event Transfer(
        address sender,
        address receiver,
        uint amount,
        string message,
        uint timestamp
    );

    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint timestamp;
    }

    TransferStruct[] transactions;

    function addToBlockchain(
        address payable receiver,
        uint amount,
        string memory message
    ) public {
        transactionCount += 1;
        transactions.push(
            TransferStruct(
                msg.sender,
                receiver,
                amount,
                message,
                block.timestamp
            )
        );
        emit Transfer(msg.sender, receiver, amount, message, block.timestamp);
    }

    function getAllTransactions()
        public
        view
        returns (TransferStruct[] memory)
    {
        return transactions;
    }

    function getTransactionCount() public view returns (uint256) {
        return transactionCount;
    }
}
