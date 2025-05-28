
## Demo Project
This project is 2created alongside the Cyfrin Updraft Course: Solidity Smart Contract Development
[https://updraft.cyfrin.io/courses/solidity/simple-storage/create-solidity-smart-contract](https://updraft.cyfrin.io/courses/solidity/simple-storage/create-solidity-smart-contract)

### Notes
Tyes of Functions
Public - Visible external & internal - other contracts/ users can call it (getter func created for state var)
Private - Only available current contract (still on chain, seeable)
External - only for func, not var. Another func in same contract cannot call this func 
Internal - only func in same contract can call (and child contracts)

## Using Hardhat in VSCode

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