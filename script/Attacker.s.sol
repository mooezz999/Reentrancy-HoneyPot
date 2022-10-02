// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/Attacker.sol";

contract AttackerScript is Script {
    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        Attacker attack = new Attacker(
            0xc3108798eAd361D1eB58B8CC8c18363d3D8dE009
        );

        vm.stopBroadcast();
    }
}
