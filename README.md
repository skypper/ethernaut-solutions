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
4. Make a copy of .env_example and rename it to .env.
5. Fill in the parameters in your .env file.

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
