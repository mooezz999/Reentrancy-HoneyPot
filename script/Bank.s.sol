// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/Bank.sol";

contract BankScript is Script {
    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        Bank bank = new Bank(0x1fdd5FE14B29c8510B99F6e8f604B602127aDF6D);

        vm.stopBroadcast();
    }
}
