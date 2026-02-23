// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";
import {SimpleResponse} from "../src/SimpleResponse.sol";

contract DeployScript is Script {
    function run() external {
        uint256 pk = vm.envUint("PRIVATE_KEY");
        
        vm.startBroadcast(pk);
        SimpleResponse response = new SimpleResponse();
        console.log("Response deployed at:", address(response));
        vm.stopBroadcast();
    }
}
