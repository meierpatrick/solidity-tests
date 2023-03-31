// SPDX-License-Identifier: MIT

/*
Tasks:
Simple Ether Wallet;
*/

pragma solidity 0.8.19;

contract EtherWallet {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    receive() external payable {}

    function withdrawal(uint _amount) external {
        require(msg.sender == owner, 'Caller is not owner!');
        payable(msg.sender).transfer(_amount);
    }

    function getBalance() external view returns(uint) {
        return address(this).balance;
    }
}
