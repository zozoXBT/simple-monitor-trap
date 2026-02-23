# Simple Monitor Trap for Drosera Network

A basic monitoring trap that demonstrates Drosera integration on Hoodi Testnet.

## 🚀 Deployed Contracts
- **Trap Contract:** `0x89e37a555Ef6fDb08E731B5f23B0e30927B3da75`
- **Response Contract:** `0xb112c48E20D1Ab81a0B3C20e26053fA5443e9173`

## Network Details
- **Network:** Hoodi Testnet
- **Chain ID:** 560048
- **Drosera Address:** `0x91cB447BaFc6e0EA0F4Fe056F5a9b1F14bb06e5D`

## 📋 Trap Configuration
- **Block Sample Size:** 1
- **Cooldown Period:** 33 blocks
- **Min Operators:** 1
- **Max Operators:** 3
- **Private Trap:** true

## 🔍 How It Works
This simple trap monitors blockchain state by collecting block timestamps. It serves as a foundation for building more complex monitoring logic.

## 🛠️ Deployment
```bash
# Deploy response contract
forge script script/Deploy.s.sol:DeployScript --broadcast --rpc-url $RPC_URL

# Apply trap to Drosera
DROSERA_PRIVATE_KEY=$PRIVATE_KEY drosera apply
