// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

contract SimpleResponse {
    event TrapTriggered(uint256 timestamp, address triggeredBy);
    
    function respond() external {
        emit TrapTriggered(block.timestamp, msg.sender);
    }
}
