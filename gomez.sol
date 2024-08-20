pragma solidity ^0.8.13;

// SPDX-License-Identifier: GPL-3.0-or-later

contract globalTalk  {

/* Copyright Secret Beach Solutions 2022 */
/* John Rigler john.rigler@protonmail.com */
/* john@rigler.org https://linkedin.com/jrigler */

address public owner;

constructor() {
    owner = msg.sender;
   }

function tell(

/*
The first variable ( a string called message ) is just that. It accepts any sort 
of arbitrary data, provided that it is encoded into hex. This is the payload and
is not read back from a smart contract. Instead, you can simply use a block explorer
such as:

https://api.polygonscan.com/api?module=account&action=txlist&address=0x5a2220d56f56db9c9f5b0cb83ff35b42746503a2&sort=desc

You will need to read the data from the input field and convert it from hex to ascii (or whatever
other format).  You will also need to skip the receiver# fields.

The other four variables create an on-chain index. I usually only send 1 tiny unit of currency. While you 
could send to actual addresses and even use this as a four-person airdrop, the idea here is that 
you are encoding words into fake (unspendable) addresses that can be searched with the included
javascript tool.
*/

    string memory message,
    address payable receiver1,
    uint256 amount1,
    address payable receiver2,
    uint256 amount2,
    address payable receiver3,
    uint256 amount3,
    address payable receiver4,
    uint256 amount4
) public
    {
    payable(receiver1).transfer(amount1);
    payable(receiver2).transfer(amount2);
    payable(receiver3).transfer(amount3);
    payable(receiver4).transfer(amount4);
    }

/*
This is just boilerplate stuff, the contract could acculumate crypto and has a way to send 
it all to the contract creator. Generally, I don't do this because it seems like someone
else could simply create their own contract and take a lower fee. So this is monetized
offchain and is simply a free tool.
*/

function cashout ( uint256 amount ) public
    {
    address payable Payment = payable(owner);
       if(msg.sender == owner)
            Payment.transfer(amount);
    }
    fallback () external payable {}
    receive () external payable {}
}
