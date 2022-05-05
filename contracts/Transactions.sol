// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Transactions {
    uint256 transacionCounter;

    event Transfer(address from, address receiver, uint amount string message, uint256 timestamp, string keyword);

    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    TransferStructure[] transacitons;

    function addToBlockchain(address payable receiver, uint amount string memory message, string memory keyword) public {
        transactionCount += 1;
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp. keyword));

        emit Transfer(TransferStruct(msg.sender, receiver, amount, message, block.timestamp. keyword));

    }

    function getAllYTransactions() public view returns (TransferStruct[] memory) {
        return transactions;
    }

    function getTransactionCount() public view returns (uint256) {
        return transactionCount;
    }

}

