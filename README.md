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

## Installation
1. If you haven't already done so, install Foundry on your machine by running the following commands:
```shell
curl -L https://foundry.paradigm.xyz | bash
foundryup
```
2. Clone the Ethernaut Foundry Solutions Repository (and remember to give it a star on Github 😉).
3. Run forge build to execute the build process.
4. Make a copy of .env.example and rename it to .env.
5. Fill in the parameters in your .env file.

## Structure

The structure of the repository is as follows:

- Under `/src`, you'll find contracts that implement solutions (attack contracts) for each challenge.
- Under `/script`, there are scripts responsible for deploying the attack contracts and executing the attack.
- Under `/test`, you'll find tests that validate the solutions. These tests, similar to scripts, conduct more comprehensive checks.

| Level                | Script   | Test |
| -------------------- | ------ | ------ |
| 1. Fallback          | ✅ [1_Fallback.s.sol](/script/1_Fallback.s.sol)     |        |
| 2. Fallout           | ✅ [2_Fallout.s.sol](/script/2_Fallout.s.sol)    |        |
| 3. CoinFlip          | ✅     |        |
| 4. Telephone         | ✅     |        |
| 5. Token             | ✅     |        |
| 6. Delegation        | ✅     |        |
| 7. Force             | ✅     |        |
| 8. Vault             | ✅     |        |
| 9. King              | ✅     |        |
| 10. Reentrance       | ✅     |        |
| 11. Elevator         | ✅     |        |
| 12. Privacy          | ✅     |        |
| 13. GatekeeperOne    | ✅     |        |
| 14. GatekeeperTwo    | ✅     |        |
| 15. NaughtCoin       | ✅     |        |
| 16. Preservation     | ✅     |        |
| 17. Recovery         | ✅     |        |
| 18. MagicNum         | ✅     |        |
| 19. AlienCodex       | ✅     |        |
| 20. Denial           | ✅     |        |
| 21. Shop             | ✅     |        |
| 22. Dex              | ✅     |        |
| 23. DexTwo           | ✅     |        |
| 24. PuzzleWallet     | ✅     |        |
| 25. Motorbike        | ✅     |        |
| 26. DoubleEntryPoint | ✅     |        |
| 27. GoodSamaritan    | ✅     |        |
| 28. GatekeeperThree  | ✅     |        |
| 29. Switch           | ✅     |        |

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
