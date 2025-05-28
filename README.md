
## Demo Project
This project is 2created alongside the Cyfrin Updraft Course: Solidity Smart Contract Development
[https://updraft.cyfrin.io/courses/solidity/simple-storage/create-solidity-smart-contract](https://updraft.cyfrin.io/courses/solidity/simple-storage/create-solidity-smart-contract)

## Deployments
Arbitrum Sepolia (421614) Testnet
* *May 28**
**Contract:** [https://sepolia.arbiscan.io/address/0xc2bad38d943dfd0b2a43c93a7834c55ec57fdac1](https://sepolia.arbiscan.io/address/0xc2bad38d943dfd0b2a43c93a7834c55ec57fdac1)

**Initial Transaction:** [https://sepolia.arbiscan.io/tx/0xf666dcddddf87473b867d9f82ebd8445a5b517ed5a0d5868784baf50f3982015](https://sepolia.arbiscan.io/tx/0xf666dcddddf87473b867d9f82ebd8445a5b517ed5a0d5868784baf50f3982015)


status	0x1 Transaction mined and execution succeed
transaction hash	0xf666dcddddf87473b867d9f82ebd8445a5b517ed5a0d5868784baf50f3982015
block hash	0x3e0c4eddcb20fa91f7afe425b12e02dc0e512af63b06098354a0041ab5886025
block number	157750623
contract address	0xc2bad38d943dfd0b2a43c93a7834c55ec57fdac1
from	0x1C016C9A15e9Ef085bD0225bc5fa834b114a13e1
to	SimpleStorage.(constructor)

## NotesNotes
Tyes of Functions
Public - Visible external & internal - other contracts/ users can call it (getter func created for state var)
Private - Only available current contract (still on chain, seeable)
External - only for func, not var. Another func in same contract cannot call this func 
Internal - only func in same contract can call (and child contracts)


### Using Hardhat in VSCode

#### Installation
**Compile all contracts**
npx hardhat compile

**Auto-compile on save (in another terminal)**
npx hardhat compile --watch

#### Compile Like Remix
**Compile all contracts**
npx hardhat compile

**Auto-compile on save (in another terminal)**
npx hardhat compile --watch

#### Test Your Contracts
**Run tests**
npx hardhat test

**Run specific test**
npx hardhat test test/SimpleStorage.test.js

**With gas reporting**
REPORT_GAS=true npx hardhat test