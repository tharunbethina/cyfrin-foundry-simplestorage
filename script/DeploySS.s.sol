// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySS is Script{
    function run() external returns(SimpleStorage){
        vm.startBroadcast();
        SimpleStorage ss = new SimpleStorage();

        vm.stopBroadcast();
        return ss;
    }
}