// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/console.sol";
import "../DistributeTokens.sol";


contract DistributeTokensTest {
    //using console for console.log;

    DistributeTokens distributeTokens;

    function setUp() public {
        distributeTokens = new DistributeTokens();
    }

    function testInvest() public {
    address investor = address(0x123); // Example investor address
    uint256 initialBalance = 1 ether;
    distributeTokens.invest{value: initialBalance}();
    uint256 expectedTokens = initialBalance * 5;
    //uint256 actualTokens = distributeTokens.investorTokens(investor);
   // uint256 actualTokens = distributeTokens.getInvestorTokens(investor);

    //assert(actualTokens == expectedTokens, "Investor tokens should be 5 times the investment");
    //assert(actualTokens == expectedTokens);

}


    function testDistribute() public {
        address investor = address(0x123); // Example investor address
        uint256 initialBalance = 1 ether;
        distributeTokens.invest{value: initialBalance}();
        distributeTokens.distribute();
        // Here, you would assert that the transferToken function has been called and the investor's balance has been updated accordingly.
        // Since transferToken is internal, you might need to mock or simulate its effects for testing purposes.
    }
}
