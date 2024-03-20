// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract DistributeTokens {
    address public owner;
    address[] public investors;
    uint[] public investorTokens;

    constructor() {
        owner = msg.sender;
    }

    function invest() public payable {
        require(msg.value > 0, "Investment must be greater than 0");
        investors.push(msg.sender);
        investorTokens.push(msg.value * 5); // 5 times the wei sent
    }

    function transferToken(address _to, uint256 _amount) internal {
        // Simulate token transfer
        // In a real scenario, you would interact with a token contract
        // For demonstration, we'll just update a hypothetical token balance
        uint256 newBalance = _amount; // This should be updated based on actual token logic
    }

    function distribute() public {
        require(msg.sender == owner, "Only owner can distribute tokens");
        for(uint i = 0; i < investors.length; i++) {
            transferToken(investors[i], investorTokens[i]);
        }
    }
}
