// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import {ITrap} from "lib/contracts/src/interfaces/ITrap.sol";

contract SimpleTrap is ITrap {
    function collect() external view returns (bytes memory) {
        return abi.encode(block.timestamp);
    }
    
    function shouldRespond(bytes[] calldata) external pure returns (bool, bytes memory) {
        return (false, bytes(""));
    }
}
