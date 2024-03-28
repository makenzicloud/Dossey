// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

import "ds-test/test.sol";
import "./Approve.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract TestApprove is DSTest {
    using SafeERC20 for ERC20;

    Approve public approveLib;
    ERC20 public token;
    TestApprove public testApprove;

    function setUp() public {
        // Deploy a mock ERC20 token for testing
        token = new ERC20("Test Token", "TST", 18);

        // Deploy the Approve library
        approveLib = new Approve();

        // Deploy the TestApprove contract
        testApprove = new TestApprove(token, approveLib);
    }

    function testApproveStable() public {
        // Mint some tokens for the owner
        token.mint(address(this), 1000 ether);

        // Approve tokens using approveStable
        testApprove.testApproveStable(address(this), 100 ether);

        // Check the allowance
        assertEq(token.allowance(address(this), address(testApprove)), 100 ether);
    }

    function testApproveSafe() public {
        // Mint some tokens for the owner
        token.mint(address(this), 1000 ether);

        // Approve tokens using approveSafe
        testApprove.testApproveSafe(address(this), 100 ether);

        // Check the allowance
        assertEq(token.allowance(address(this), address(testApprove)), 100 ether);
    }

    // Additional tests can be added here to cover more scenarios
}
