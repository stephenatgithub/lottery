// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Lottery.sol";

contract LotteryTest is Test {
    Lottery public lottery;
    Attack public attack;

    function setUp() public {
        lottery = new Lottery{value: 10 ether}();
        attack = new Attack();
    }

    function testAttack() public {
        console.log("Before lottery balance = ", lottery.getBalance());
        console.log("Before attack balance = ", attack.getBalance());
        attack.attack(lottery);
        console.log("After lottery balance = ", lottery.getBalance());
        console.log("After attack balance = ", attack.getBalance());
    }

}
