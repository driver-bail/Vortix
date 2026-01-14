// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract TokenManager {
    mapping(address => uint256) private balances;

    function deposit(address account, uint256 amount) external {
        balances[account] += amount;
    }

    function getBalance(address account) external view returns (uint256) {
        return balances[account];
    }
}
