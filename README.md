# Vortix

## Overview
Vortix is a tool that helps verify the health of Base Sepolia infrastructure. It checks connectivity, block status, wallet balances, and contract bytecode presence, all in a read-only mode that doesn't alter any onchain data.

Built for Base.

## Purpose
Vortix is designed to:
- Verify Base Sepolia RPC health
- Retrieve wallet balances (when addresses are available)
- Fetch the latest block and gas price
- Confirm bytecode presence at specified addresses

This tool is ideal for validating environment setup, performing audits, or integrating into CI pipelines for Base Sepolia.

## What Vortix Does
- Performs an `eth_chainId` RPC check to verify network health  
- Fetches wallet balances if wallet addresses are connected  
- Reads the latest block number, timestamp, and gas price  
- Checks for bytecode presence at specified contract addresses  
- Outputs easily readable explorer links for all data  

## Workflow
1) Initialize Base Sepolia constants (RPC URL, explorer)  
2) Perform an `eth_chainId` health check  
3) Discover wallet addresses using Coinbase Wallet SDK  
4) If wallet addresses are found, read and display balances  
5) Fetch latest block and gas price information  
6) Perform bytecode presence checks at specified contract addresses  
7) Output the results with corresponding explorer links  

## Base Sepolia Details
- Network: Base Sepolia  
- chainId (decimal): 84532  
- Explorer: https://sepolia.basescan.org  

## Structure
- README.md  
- app/Vortix.mjs  
- package.json  
- contracts/TokenManager.sol  
- contracts/BlockTracker.sol  
- config/base-sepolia.json  
- samples/targets.json  

## License
MIT License

## Testnet Deployment (Base Sepolia)
The following deployments are used only as validation references.

network: base sepolia  
chainId (decimal): 84532  
explorer: https://sepolia.basescan.org  

TokenManager.sol address:  
0x5b24e7c12B879D4a9c74C08dbF9C9244fDb728c7  

Deployment and verification:
- https://sepolia.basescan.org/address/0x5b24e7c12B879D4a9c74C08dbF9C9244fDb728c7
- https://sepolia.basescan.org/0x5b24e7c12B879D4a9c74C08dbF9C9244fDb728c7/0#code  

These deployments provide a controlled environment for validating base tooling and read-only onchain access prior to base mainnet usage.

## Author Contacts
- GitHub: https://github.com/driver-bail 
- Email: driver-bail-0n@icloud.com
