## Ethernaut Solutions implemented in Foundry 2024

GM, anon!

> "The Ethernaut is a Web3/Solidity based wargame inspired by overthewire.org, played in the Ethereum Virtual Machine. Each level is a smart contract that needs to be 'hacked'." - [Ethernaut webpage](https://ethernaut.openzeppelin.com/)

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

- https://book.getfoundry.sh/
- https://blog.dixitaditya.com/series/ethernaut
- https://twitter.com/tudoratu/status/1744032551520313361
- https://twitter.com/tudoratu/status/1748351567663620512
- Google is your friend

## Setup and Installation
1. If you haven't already done so, install Foundry on your machine by running the following commands:
```shell
curl -L https://foundry.paradigm.xyz | bash
foundryup
```
2. Clone the Ethernaut Foundry Solutions Repository (and remember to give it a star on Github 😉).
3. Run forge build to execute the build process.
4. Create a new random key pair and import it into MetaMask.
```shell
cast wallet new
```
5. Ethernaut supports a few testnets, however we recommend solving the challenges on the Sepolia testnet using Alchemy web3 provider. 
- https://sepoliafaucet.com/
- https://sepolia-faucet.pk910.de/
- https://www.alchemy.com/
6. Make a copy of .env.example and rename it to .env.
7. Fill in the parameters in your .env file.

## Structure

The structure of the repository is as follows:

- Under `/src`, you'll find contracts that implement solutions (attack contracts) for each challenge.
- Under `/script`, there are scripts responsible for deploying the attack contracts and executing the attack.
- Under `/test`, you'll find tests that validate the solutions. These tests, similar to scripts, conduct more comprehensive checks.

| Level                | Script   | Test |
| -------------------- | ------ | ------ |
| [1. Fallback](https://ethernaut.openzeppelin.com/level/1)          | ✅ [1_Fallback.s.sol](/script/1_Fallback.s.sol)     | [1_Fallback.t.sol](/test/1_Fallback.t.sol)       |
| [2. Fallout](https://ethernaut.openzeppelin.com/level/2)           | ✅ [2_Fallout.s.sol](/script/2_Fallout.s.sol)    |        |
| [3. CoinFlip](https://ethernaut.openzeppelin.com/level/3)          | ✅ [3_CoinFlip.s.sol](/script/3_CoinFlip.s.sol)    |        |
| [4. Telephone](https://ethernaut.openzeppelin.com/level/4)         | ✅ [4_Telephone.s.sol](/script/4_Telephone.s.sol)    | [4_Telephone.t.sol](/test/4_Telephone.t.sol)       |
| [5. Token](https://ethernaut.openzeppelin.com/level/5)             | ✅ [5_Coin.s.sol](/script/5_Coin.s.sol)    |        |
| [6. Delegation](https://ethernaut.openzeppelin.com/level/6)        | ✅ [6_Delegation.s.sol](/script/6_Delegation.s.sol)    | [6_Delegation.t.sol](/test/6_Delegation.t.sol)       |
| [7. Force](https://ethernaut.openzeppelin.com/level/7)             | ✅ [7_Force.s.sol](/script/7_Force.s.sol)    | [7_Force.t.sol](/test/7_Force.t.sol)       |
| [8. Vault](https://ethernaut.openzeppelin.com/level/8)             | ✅ [8_Vault.s.sol](/script/8_Vault.s.sol)    | [8_Vault.t.sol](/test/8_Vault.t.sol)       |
| [9. King](https://ethernaut.openzeppelin.com/level/9)              | ✅ [9_King.s.sol](/script/9_King.s.sol)    | [9_King.t.sol](/test/9_King.t.sol)       |
| [10. Reentrancy](https://ethernaut.openzeppelin.com/level/10)       | ✅ [10_Reentrancy.s.sol](/script/10_Reentrancy.s.sol)    | [10_Reentrancy.t.sol](/test/10_Reentrancy.t.sol)       |
| [11. Elevator](https://ethernaut.openzeppelin.com/level/11)         | ✅ [11_Elevator.s.sol](/script/11_Elevator.s.sol)    |        |
| [12. Privacy](https://ethernaut.openzeppelin.com/level/12)          | ✅ [12_Privacy.s.sol](/script/12_Privacy.s.sol)    |        |
| [13. GatekeeperOne](https://ethernaut.openzeppelin.com/level/13)    | ✅ [13_GatekeeperOne.s.sol](/script/13_GatekeeperOne.s.sol)    |        |
| [14. GatekeeperTwo](https://ethernaut.openzeppelin.com/level/14)    | ✅ [14_GatekeeperTwo.s.sol](/script/14_GatekeeperTwo.s.sol)    |        |
| [15. NaughtCoin](https://ethernaut.openzeppelin.com/level/15)       | ✅ [15_NaughtCoin.s.sol](/script/15_NaughtCoin.s.sol)    |        |
| [16. Preservation](https://ethernaut.openzeppelin.com/level/16)     | ✅ [16_Preservation.s.sol](/script/16_Preservation.s.sol)    |        |
| [17. Recovery](https://ethernaut.openzeppelin.com/level/17)         | ✅ [17_Recovery.s.sol](/script/17_Recovery.s.sol)    |        |
| [18. MagicNum](https://ethernaut.openzeppelin.com/level/18)         | ✅ [18_MagicNum.s.sol](/script/18_MagicNum.s.sol)    |        |
| [19. AlienCodex](https://ethernaut.openzeppelin.com/level/19)       | ✅ [19_AlienCodex.s.sol](/script/19_AlienCodex.s.sol)    |        |
| [20. Denial](https://ethernaut.openzeppelin.com/level/20)           | ✅ [20_Denial.s.sol](/script/20_Denial.s.sol)    |        |
| [21. Shop](https://ethernaut.openzeppelin.com/level/21)             | ✅ [21_Shop.s.sol](/script/21_Shop.s.sol)    |        |
| [22. Dex](https://ethernaut.openzeppelin.com/level/22)              | ✅ [22_Dex.s.sol](/script/22_Dex.s.sol)    |        |
| [23. DexTwo](https://ethernaut.openzeppelin.com/level/23)           | ✅ [23_DexTwo.s.sol](/script/23_DexTwo.s.sol)    |        |
| [24. PuzzleWallet](https://ethernaut.openzeppelin.com/level/24)     | ✅ [24_PuzzleWallet.s.sol](/script/24_PuzzleWallet.s.sol)    |        |
| [25. Motorbike](https://ethernaut.openzeppelin.com/level/25)         | ✅ [25_Motorbike.s.sol](/script/25_Motorbike.s.sol)    |        |
| [26. DoubleEntryPoint](https://ethernaut.openzeppelin.com/level/26) | ✅ [26_DoubleEntryPoint.s.sol](/script/26_DoubleEntryPoint.s.sol)    | [26_DoubleEntryPoint.t.sol](/test/26_DoubleEntryPoint.t.sol)       |
| [27. GoodSamaritan](https://ethernaut.openzeppelin.com/level/27)    | ✅ [27_GoodSamaritan.s.sol](/script/27_GoodSamaritan.s.sol)    |        |
| [28. GatekeeperThree](https://ethernaut.openzeppelin.com/level/28)  | ✅ [28_GatekeeperThree.s.sol](/script/28_GatekeeperThree.s.sol)    |        |
| [29. Switch](https://ethernaut.openzeppelin.com/level/29)           | ✅ -    |        |

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
