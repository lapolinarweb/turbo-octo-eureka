# Class: AbiDecoder

AbiDecoder allows you to decode event logs given a set of supplied contract ABI's. It takes the contract's event
signature from the ABI and attempts to decode the logs using it.


##   Constructors



\+ **new AbiDecoder**(`abiArrays`: [AbiDefinition](#abidefinition)[][]): *[AbiDecoder](#class-abidecoder)*

*Defined in [utils/src/abi_decoder.ts:42](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/utils/src/abi_decoder.ts#L42)*

Instantiate an AbiDecoder

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`abiArrays` | [AbiDefinition](#abidefinition)[][] | An array of contract ABI's |

**Returns:** *[AbiDecoder](#class-abidecoder)*

AbiDecoder instance

## Methods

###  addABI

▸ **addABI**(`abiArray`: [AbiDefinition](#abidefinition)[], `contractName?`: undefined | string): *void*

*Defined in [utils/src/abi_decoder.ts:158](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/utils/src/abi_decoder.ts#L158)*

Adds a set of ABI definitions, after which calldata and logs targeting these ABI's can be decoded.
Additional properties can be included to disambiguate similar ABI's. For example, if two functions
have the same signature but different parameter names, then their ABI definitions can be disambiguated
by specifying a contract name.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`abiArray` | [AbiDefinition](#abidefinition)[] | - |
`contractName?` | undefined \| string | Name of contract that encapsulates the ABI definitions (optional).                     This can be used when decoding calldata to disambiguate methods with                     the same signature but different parameter names.  |

**Returns:** *void*

___

###  decodeCalldataOrThrow

▸ **decodeCalldataOrThrow**(`calldata`: string, `contractName?`: undefined | string): *`DecodedCalldata`*

*Defined in [utils/src/abi_decoder.ts:118](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/utils/src/abi_decoder.ts#L118)*

Decodes calldata for a known ABI.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`calldata` | string | hex-encoded calldata. |
`contractName?` | undefined \| string | used to disambiguate similar ABI's (optional). |

**Returns:** *`DecodedCalldata`*

Decoded calldata. Includes: function name and signature, along with the decoded arguments.

___

###  tryToDecodeLogOrNoop

▸ **tryToDecodeLogOrNoop**<**ArgsType**>(`log`: `LogEntry`): *`LogWithDecodedArgs<ArgsType>` | [RawLog](#rawlog)*

*Defined in [utils/src/abi_decoder.ts:58](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/utils/src/abi_decoder.ts#L58)*

Attempt to decode a log given the ABI's the AbiDecoder knows about.

**Type parameters:**

▪ **ArgsType**: *`DecodedLogArgs`*

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`log` | `LogEntry` | The log to attempt to decode |

**Returns:** *`LogWithDecodedArgs<ArgsType>` | [RawLog](#rawlog)*

The decoded log if the requisite ABI was available. Otherwise the log unaltered.

<hr />

# Class: Web3Wrapper

An alternative to the Web3.js library that provides a consistent, clean, promise-based interface.


##   Constructors



\+ **new Web3Wrapper**(`supportedProvider`: [SupportedProvider](#supportedprovider), `callAndTxnDefaults`: `Partial<CallData>`): *[Web3Wrapper](#class-web3wrapper)*

*Defined in [web3-wrapper/src/web3_wrapper.ts:144](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L144)*

Instantiates a new Web3Wrapper.

**Parameters:**

Name | Type | Default | Description |
------ | ------ | ------ | ------ |
`supportedProvider` | [SupportedProvider](#supportedprovider) | - | - |
`callAndTxnDefaults` | `Partial<CallData>` |  {} | Override Call and Txn Data defaults sent with RPC requests to the backing Ethereum node. |

**Returns:** *[Web3Wrapper](#class-web3wrapper)*

An instance of the Web3Wrapper class.

## Properties

###  abiDecoder

• **abiDecoder**: *`AbiDecoder`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:54](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L54)*

___

###  isZeroExWeb3Wrapper

• **isZeroExWeb3Wrapper**: *boolean* = true

*Defined in [web3-wrapper/src/web3_wrapper.ts:53](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L53)*

Flag to check if this instance is of type Web3Wrapper

## Methods

###  awaitTransactionMinedAsync

▸ **awaitTransactionMinedAsync**(`txHash`: string, `pollingIntervalMs`: number, `timeoutMs?`: undefined | number): *`Promise<TransactionReceiptWithDecodedLogs>`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:576](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L576)*

Waits for a transaction to be mined and returns the transaction receipt.
Note that just because a transaction was mined does not mean it was
successful. You need to check the status code of the transaction receipt
to find out if it was successful, or use the helper method
awaitTransactionSuccessAsync.

**Parameters:**

Name | Type | Default | Description |
------ | ------ | ------ | ------ |
`txHash` | string | - | Transaction hash |
`pollingIntervalMs` | number | 1000 | How often (in ms) should we check if the transaction is mined. |
`timeoutMs?` | undefined \| number | - | How long (in ms) to poll for transaction mined until aborting. |

**Returns:** *`Promise<TransactionReceiptWithDecodedLogs>`*

Transaction receipt with decoded log args.

___

###  awaitTransactionSuccessAsync

▸ **awaitTransactionSuccessAsync**(`txHash`: string, `pollingIntervalMs`: number, `timeoutMs?`: undefined | number): *`Promise<TransactionReceiptWithDecodedLogs>`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:651](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L651)*

Waits for a transaction to be mined and returns the transaction receipt.
Unlike awaitTransactionMinedAsync, it will throw if the receipt has a
status that is not equal to 1. A status of 0 or null indicates that the
transaction was mined, but failed. See:
https://github.com/ethereum/wiki/wiki/JavaScript-API#web3ethgettransactionreceipt

**Parameters:**

Name | Type | Default | Description |
------ | ------ | ------ | ------ |
`txHash` | string | - | Transaction hash |
`pollingIntervalMs` | number | 1000 | How often (in ms) should we check if the transaction is mined. |
`timeoutMs?` | undefined \| number | - | How long (in ms) to poll for transaction mined until aborting. |

**Returns:** *`Promise<TransactionReceiptWithDecodedLogs>`*

Transaction receipt with decoded log args.

___

###  callAsync

▸ **callAsync**(`callData`: `CallData`, `defaultBlock?`: [BlockParam](#blockparam)): *`Promise<string>`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:533](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L533)*

Call a smart contract method at a given block height

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`callData` | `CallData` | Call data |
`defaultBlock?` | [BlockParam](#blockparam) | Block height at which to make the call. Defaults to `latest` |

**Returns:** *`Promise<string>`*

The raw call result

___

###  doesContractExistAtAddressAsync

▸ **doesContractExistAtAddressAsync**(`address`: string): *`Promise<boolean>`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:281](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L281)*

Check if a contract exists at a given address

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`address` | string | Address to which to check |

**Returns:** *`Promise<boolean>`*

Whether or not contract code was found at the supplied address

___

###  estimateGasAsync

▸ **estimateGasAsync**(`txData`: `Partial<TxData>`): *`Promise<number>`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:516](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L516)*

Calculate the estimated gas cost for a given transaction

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`txData` | `Partial<TxData>` | Transaction data |

**Returns:** *`Promise<number>`*

Estimated gas cost

___

###  getAvailableAddressesAsync

▸ **getAvailableAddressesAsync**(): *`Promise<string[]>`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:429](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L429)*

Retrieve the user addresses available through the backing provider

**Returns:** *`Promise<string[]>`*

Available user addresses

___

###  getBalanceInWeiAsync

▸ **getBalanceInWeiAsync**(`owner`: string, `defaultBlock?`: [BlockParam](#blockparam)): *`Promise<BigNumber>`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:262](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L262)*

Retrieves an accounts Ether balance in wei

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`owner` | string | Account whose balance you wish to check |
`defaultBlock?` | [BlockParam](#blockparam) | The block depth at which to fetch the balance (default=latest) |

**Returns:** *`Promise<BigNumber>`*

Balance in wei

___

###  getBlockIfExistsAsync

▸ **getBlockIfExistsAsync**(`blockParam`: string | [BlockParam](#blockparam)): *`Promise<BlockWithoutTransactionData | undefined>`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:369](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L369)*

Fetch a specific Ethereum block without transaction data

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`blockParam` | string \| [BlockParam](#blockparam) | The block you wish to fetch (blockHash, blockNumber or blockLiteral) |

**Returns:** *`Promise<BlockWithoutTransactionData | undefined>`*

The requested block without transaction data, or undefined if block was not found
(e.g the node isn't fully synced, there was a block re-org and the requested block was uncles, etc...)

___

###  getBlockNumberAsync

▸ **getBlockNumberAsync**(): *`Promise<number>`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:355](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L355)*

Fetches the latest block number

**Returns:** *`Promise<number>`*

Block number

___

###  getBlockTimestampAsync

▸ **getBlockTimestampAsync**(`blockParam`: string | [BlockParam](#blockparam)): *`Promise<number>`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:417](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L417)*

Fetch a block's timestamp

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`blockParam` | string \| [BlockParam](#blockparam) | The block you wish to fetch (blockHash, blockNumber or blockLiteral) |

**Returns:** *`Promise<number>`*

The block's timestamp

___

###  getBlockWithTransactionDataAsync

▸ **getBlockWithTransactionDataAsync**(`blockParam`: string | [BlockParam](#blockparam)): *`Promise<BlockWithTransactionData>`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:395](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L395)*

Fetch a specific Ethereum block with transaction data

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`blockParam` | string \| [BlockParam](#blockparam) | The block you wish to fetch (blockHash, blockNumber or blockLiteral) |

**Returns:** *`Promise<BlockWithTransactionData>`*

The requested block with transaction data

___

###  getChainIdAsync

▸ **getChainIdAsync**(): *`Promise<number>`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:215](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L215)*

Fetches the chainId of the backing Ethereum node

**Returns:** *`Promise<number>`*

The chain id

___

###  getContractCodeAsync

▸ **getContractCodeAsync**(`address`: string, `defaultBlock?`: [BlockParam](#blockparam)): *`Promise<string>`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:294](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L294)*

Gets the contract code by address

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`address` | string | Address of the contract |
`defaultBlock?` | [BlockParam](#blockparam) | Block height at which to make the call. Defaults to `latest` |

**Returns:** *`Promise<string>`*

Code of the contract

___

###  getContractDefaults

▸ **getContractDefaults**(): *`Partial<CallData>` | undefined*

*Defined in [web3-wrapper/src/web3_wrapper.ts:163](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L163)*

Get the contract defaults set to the Web3Wrapper instance

**Returns:** *`Partial<CallData>` | undefined*

CallAndTxnData defaults (e.g gas, gasPrice, nonce, etc...)

___

###  getLogsAsync

▸ **getLogsAsync**(`filter`: `FilterObject`): *`Promise<LogEntry[]>`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:483](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L483)*

Retrieve smart contract logs for a given filter

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`filter` | `FilterObject` | Parameters by which to filter which logs to retrieve |

**Returns:** *`Promise<LogEntry[]>`*

The corresponding log entries

___

###  getNetworkIdAsync

▸ **getNetworkIdAsync**(): *`Promise<number>`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:206](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L206)*

Fetches the networkId of the backing Ethereum node

**Returns:** *`Promise<number>`*

The network id

___

###  getNodeTypeAsync

▸ **getNodeTypeAsync**(): *`Promise<NodeType>`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:698](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L698)*

Returns either NodeType.Geth or NodeType.Ganache depending on the type of
the backing Ethereum node. Throws for any other type of node.

**Returns:** *`Promise<NodeType>`*

___

###  getNodeVersionAsync

▸ **getNodeVersionAsync**(): *`Promise<string>`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:198](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L198)*

Fetch the backing Ethereum node's version string (e.g `MetaMask/v4.2.0`)

**Returns:** *`Promise<string>`*

Ethereum node's version string

___

###  getProvider

▸ **getProvider**(): *[SupportedProvider](#supportedprovider)*

*Defined in [web3-wrapper/src/web3_wrapper.ts:170](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L170)*

Retrieve the Web3 provider

**Returns:** *[SupportedProvider](#supportedprovider)*

Web3 provider instance

___

###  getTransactionByHashAsync

▸ **getTransactionByHashAsync**(`txHash`: string): *`Promise<Transaction>`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:247](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L247)*

Retrieves the transaction data for a given transaction

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`txHash` | string | Transaction hash |

**Returns:** *`Promise<Transaction>`*

The raw transaction data

___

###  getTransactionReceiptIfExistsAsync

▸ **getTransactionReceiptIfExistsAsync**(`txHash`: string): *`Promise<TransactionReceipt | undefined>`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:225](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L225)*

Retrieves the transaction receipt for a given transaction hash if found

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`txHash` | string | Transaction hash |

**Returns:** *`Promise<TransactionReceipt | undefined>`*

The transaction receipt, including it's status (0: failed, 1: succeeded). Returns undefined if transaction not found.

___

###  getTransactionTraceAsync

▸ **getTransactionTraceAsync**(`txHash`: string, `traceParams`: `TraceParams`): *`Promise<TransactionTrace>`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:313](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L313)*

Gets the debug trace of a transaction

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`txHash` | string | Hash of the transactuon to get a trace for |
`traceParams` | `TraceParams` | Config object allowing you to specify if you need memory/storage/stack traces. |

**Returns:** *`Promise<TransactionTrace>`*

Transaction trace

___

###  increaseTimeAsync

▸ **increaseTimeAsync**(`timeDelta`: number): *`Promise<number>`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:466](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L466)*

Increase the next blocks timestamp on TestRPC/Ganache or Geth local node.
Will throw if provider is neither TestRPC/Ganache or Geth.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`timeDelta` | number | Amount of time to add in seconds  |

**Returns:** *`Promise<number>`*

___

###  isSenderAddressAvailableAsync

▸ **isSenderAddressAvailableAsync**(`senderAddress`: string): *`Promise<boolean>`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:188](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L188)*

Check whether an address is available through the backing provider. This can be
useful if you want to know whether a user can sign messages or transactions from
a given Ethereum address.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`senderAddress` | string | Address to check availability for |

**Returns:** *`Promise<boolean>`*

Whether the address is available through the provider.

___

###  mineBlockAsync

▸ **mineBlockAsync**(): *`Promise<void>`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:458](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L458)*

Mine a block on a TestRPC/Ganache local node

**Returns:** *`Promise<void>`*

___

###  revertSnapshotAsync

▸ **revertSnapshotAsync**(`snapshotId`: number): *`Promise<boolean>`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:450](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L450)*

Revert the blockchain state to a previous snapshot state on TestRPC/Ganache local node

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`snapshotId` | number | snapshot id to revert to |

**Returns:** *`Promise<boolean>`*

Whether the revert was successful

___

###  sendRawPayloadAsync

▸ **sendRawPayloadAsync**<**A**>(`payload`: `Partial<JSONRPCRequestPayload>`): *`Promise<A>`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:679](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L679)*

Sends a raw Ethereum JSON RPC payload and returns the response's `result` key

**Type parameters:**

▪ **A**

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`payload` | `Partial<JSONRPCRequestPayload>` | A partial JSON RPC payload. No need to include version, id, params (if none needed) |

**Returns:** *`Promise<A>`*

The contents nested under the result key of the response body

___

###  sendTransactionAsync

▸ **sendTransactionAsync**(`txData`: `TxData`): *`Promise<string>`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:555](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L555)*

Send a transaction

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`txData` | `TxData` | Transaction data |

**Returns:** *`Promise<string>`*

Transaction hash

___

###  setHeadAsync

▸ **setHeadAsync**(`blockNumber`: number): *`Promise<void>`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:670](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L670)*

Calls the 'debug_setHead' JSON RPC method, which sets the current head of
the local chain by block number. Note, this is a destructive action and
may severely damage your chain. Use with extreme caution. As of now, this
is only supported by Geth. It sill throw if the 'debug_setHead' method is
not supported.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`blockNumber` | number | The block number to reset to.  |

**Returns:** *`Promise<void>`*

___

###  setProvider

▸ **setProvider**(`supportedProvider`: [SupportedProvider](#supportedprovider)): *void*

*Defined in [web3-wrapper/src/web3_wrapper.ts:177](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L177)*

Update the used Web3 provider

**Parameters:**

Name | Type |
------ | ------ |
`supportedProvider` | [SupportedProvider](#supportedprovider) |

**Returns:** *void*

___

###  signMessageAsync

▸ **signMessageAsync**(`address`: string, `message`: string): *`Promise<string>`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:327](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L327)*

Sign a message with a specific address's private key (`eth_sign`)

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`address` | string | Address of signer |
`message` | string | Message to sign |

**Returns:** *`Promise<string>`*

Signature string (might be VRS or RSV depending on the Signer)

___

###  signTypedDataAsync

▸ **signTypedDataAsync**(`address`: string, `typedData`: any): *`Promise<string>`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:342](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L342)*

Sign an EIP712 typed data message with a specific address's private key (`eth_signTypedData`)

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`address` | string | Address of signer |
`typedData` | any | Typed data message to sign |

**Returns:** *`Promise<string>`*

Signature string (as RSV)

___

###  takeSnapshotAsync

▸ **takeSnapshotAsync**(): *`Promise<number>`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:441](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L441)*

Take a snapshot of the blockchain state on a TestRPC/Ganache local node

**Returns:** *`Promise<number>`*

The snapshot id. This can be used to revert to this snapshot

___

### `Static` isAddress

▸ **isAddress**(`address`: string): *boolean*

*Defined in [web3-wrapper/src/web3_wrapper.ts:65](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L65)*

Check if an address is a valid Ethereum address

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`address` | string | Address to check |

**Returns:** *boolean*

Whether the address is a valid Ethereum address

___

### `Static` toBaseUnitAmount

▸ **toBaseUnitAmount**(`amount`: `BigNumber` | number, `decimals`: number): *`BigNumber`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:91](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L91)*

A baseUnit is defined as the smallest denomination of a token. An amount expressed in baseUnits
is the amount expressed in the smallest denomination.
E.g: 1 unit of a token with 18 decimal places is expressed in baseUnits as 1000000000000000000

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`amount` | `BigNumber` \| number | The amount of units that you would like converted to baseUnits. |
`decimals` | number | The number of decimal places the unit amount has. |

**Returns:** *`BigNumber`*

The amount in baseUnits.

___

### `Static` toUnitAmount

▸ **toUnitAmount**(`amount`: `BigNumber`, `decimals`: number): *`BigNumber`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:76](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L76)*

A unit amount is defined as the amount of a token above the specified decimal places (integer part).
E.g: If a currency has 18 decimal places, 1e18 or one quintillion of the currency is equivalent
to 1 unit.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`amount` | `BigNumber` | The amount in baseUnits that you would like converted to units. |
`decimals` | number | The number of decimal places the unit amount has. |

**Returns:** *`BigNumber`*

The amount in units.

___

### `Static` toWei

▸ **toWei**(`ethAmount`: `BigNumber`): *`BigNumber`*

*Defined in [web3-wrapper/src/web3_wrapper.ts:106](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/web3_wrapper.ts#L106)*

Convert an Ether amount from ETH to Wei

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`ethAmount` | `BigNumber` | Amount of Ether to convert to wei |

**Returns:** *`BigNumber`*

Amount in wei

<hr />



# Enumeration: BlockParamLiteral


##  Enumeration members

###  Earliest

• **Earliest**: = "earliest"

*Defined in [ethereum-types/src/index.ts:478](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L478)*

___

###  Latest

• **Latest**: = "latest"

*Defined in [ethereum-types/src/index.ts:479](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L479)*

___

###  Pending

• **Pending**: = "pending"

*Defined in [ethereum-types/src/index.ts:480](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L480)*

<hr />

# Enumeration: OpCode


##  Enumeration members

###  Add

• **Add**: = "ADD"

*Defined in [ethereum-types/src/index.ts:147](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L147)*

___

###  AddMod

• **AddMod**: = "ADDMOD"

*Defined in [ethereum-types/src/index.ts:154](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L154)*

___

###  Address

• **Address**: = "ADDRESS"

*Defined in [ethereum-types/src/index.ts:173](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L173)*

___

###  And

• **And**: = "AND"

*Defined in [ethereum-types/src/index.ts:165](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L165)*

___

###  Balance

• **Balance**: = "BALANCE"

*Defined in [ethereum-types/src/index.ts:174](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L174)*

___

###  BlockHash

• **BlockHash**: = "BLOCKHASH"

*Defined in [ethereum-types/src/index.ts:189](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L189)*

___

###  Byte

• **Byte**: = "BYTE"

*Defined in [ethereum-types/src/index.ts:169](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L169)*

___

###  Call

• **Call**: = "CALL"

*Defined in [ethereum-types/src/index.ts:282](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L282)*

___

###  CallCode

• **CallCode**: = "CALLCODE"

*Defined in [ethereum-types/src/index.ts:283](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L283)*

___

###  CallDataCopy

• **CallDataCopy**: = "CALLDATACOPY"

*Defined in [ethereum-types/src/index.ts:180](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L180)*

___

###  CallDataLoad

• **CallDataLoad**: = "CALLDATALOAD"

*Defined in [ethereum-types/src/index.ts:178](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L178)*

___

###  CallDataSize

• **CallDataSize**: = "CALLDATASIZE"

*Defined in [ethereum-types/src/index.ts:179](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L179)*

___

###  CallValue

• **CallValue**: = "CALLVALUE"

*Defined in [ethereum-types/src/index.ts:177](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L177)*

___

###  Caller

• **Caller**: = "CALLER"

*Defined in [ethereum-types/src/index.ts:176](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L176)*

___

###  CodeCopy

• **CodeCopy**: = "CODECOPY"

*Defined in [ethereum-types/src/index.ts:182](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L182)*

___

###  CodeSize

• **CodeSize**: = "CODESIZE"

*Defined in [ethereum-types/src/index.ts:181](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L181)*

___

###  Coinbase

• **Coinbase**: = "COINBASE"

*Defined in [ethereum-types/src/index.ts:190](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L190)*

___

###  Create

• **Create**: = "CREATE"

*Defined in [ethereum-types/src/index.ts:281](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L281)*

___

###  DelegateCall

• **DelegateCall**: = "DELEGATECALL"

*Defined in [ethereum-types/src/index.ts:285](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L285)*

___

###  Difficulty

• **Difficulty**: = "DIFFICULTY"

*Defined in [ethereum-types/src/index.ts:193](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L193)*

___

###  Div

• **Div**: = "DIV"

*Defined in [ethereum-types/src/index.ts:150](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L150)*

___

###  Dup1

• **Dup1**: = "DUP1"

*Defined in [ethereum-types/src/index.ts:242](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L242)*

___

###  Dup10

• **Dup10**: = "DUP10"

*Defined in [ethereum-types/src/index.ts:251](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L251)*

___

###  Dup11

• **Dup11**: = "DUP11"

*Defined in [ethereum-types/src/index.ts:252](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L252)*

___

###  Dup12

• **Dup12**: = "DUP12"

*Defined in [ethereum-types/src/index.ts:253](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L253)*

___

###  Dup13

• **Dup13**: = "DUP13"

*Defined in [ethereum-types/src/index.ts:254](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L254)*

___

###  Dup14

• **Dup14**: = "DUP14"

*Defined in [ethereum-types/src/index.ts:255](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L255)*

___

###  Dup15

• **Dup15**: = "DUP15"

*Defined in [ethereum-types/src/index.ts:256](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L256)*

___

###  Dup16

• **Dup16**: = "DUP16"

*Defined in [ethereum-types/src/index.ts:257](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L257)*

___

###  Dup2

• **Dup2**: = "DUP2"

*Defined in [ethereum-types/src/index.ts:243](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L243)*

___

###  Dup3

• **Dup3**: = "DUP3"

*Defined in [ethereum-types/src/index.ts:244](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L244)*

___

###  Dup4

• **Dup4**: = "DUP4"

*Defined in [ethereum-types/src/index.ts:245](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L245)*

___

###  Dup5

• **Dup5**: = "DUP5"

*Defined in [ethereum-types/src/index.ts:246](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L246)*

___

###  Dup6

• **Dup6**: = "DUP6"

*Defined in [ethereum-types/src/index.ts:247](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L247)*

___

###  Dup7

• **Dup7**: = "DUP7"

*Defined in [ethereum-types/src/index.ts:248](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L248)*

___

###  Dup8

• **Dup8**: = "DUP8"

*Defined in [ethereum-types/src/index.ts:249](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L249)*

___

###  Dup9

• **Dup9**: = "DUP9"

*Defined in [ethereum-types/src/index.ts:250](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L250)*

___

###  Eq

• **Eq**: = "EQ"

*Defined in [ethereum-types/src/index.ts:163](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L163)*

___

###  Exp

• **Exp**: = "EXP"

*Defined in [ethereum-types/src/index.ts:156](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L156)*

___

###  ExtCodeCopy

• **ExtCodeCopy**: = "EXTCODECOPY"

*Defined in [ethereum-types/src/index.ts:185](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L185)*

___

###  ExtCodeSize

• **ExtCodeSize**: = "EXTCODESIZE"

*Defined in [ethereum-types/src/index.ts:184](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L184)*

___

###  Gas

• **Gas**: = "GAS"

*Defined in [ethereum-types/src/index.ts:206](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L206)*

___

###  GasPrice

• **GasPrice**: = "GASPRICE"

*Defined in [ethereum-types/src/index.ts:183](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L183)*

___

###  Gaslimit

• **Gaslimit**: = "GASLIMIT"

*Defined in [ethereum-types/src/index.ts:194](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L194)*

___

###  Gt

• **Gt**: = "GT"

*Defined in [ethereum-types/src/index.ts:160](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L160)*

___

###  Invalid

• **Invalid**: = "INVALID"

*Defined in [ethereum-types/src/index.ts:288](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L288)*

___

###  IsZero

• **IsZero**: = "ISZERO"

*Defined in [ethereum-types/src/index.ts:164](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L164)*

___

###  Jump

• **Jump**: = "JUMP"

*Defined in [ethereum-types/src/index.ts:202](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L202)*

___

###  JumpDest

• **JumpDest**: = "JUMPDEST"

*Defined in [ethereum-types/src/index.ts:207](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L207)*

___

###  Jumpi

• **Jumpi**: = "JUMPI"

*Defined in [ethereum-types/src/index.ts:203](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L203)*

___

###  Log1

• **Log1**: = "LOG1"

*Defined in [ethereum-types/src/index.ts:276](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L276)*

___

###  Log2

• **Log2**: = "LOG2"

*Defined in [ethereum-types/src/index.ts:277](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L277)*

___

###  Log3

• **Log3**: = "LOG3"

*Defined in [ethereum-types/src/index.ts:278](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L278)*

___

###  Log4

• **Log4**: = "LOG4"

*Defined in [ethereum-types/src/index.ts:279](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L279)*

___

###  Lt

• **Lt**: = "LT"

*Defined in [ethereum-types/src/index.ts:159](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L159)*

___

###  MLoad

• **MLoad**: = "MLOAD"

*Defined in [ethereum-types/src/index.ts:197](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L197)*

___

###  MSize

• **MSize**: = "MSIZE"

*Defined in [ethereum-types/src/index.ts:205](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L205)*

___

###  MStore

• **MStore**: = "MSTORE"

*Defined in [ethereum-types/src/index.ts:198](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L198)*

___

###  MStore8

• **MStore8**: = "MSTORE8"

*Defined in [ethereum-types/src/index.ts:199](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L199)*

___

###  Mod

• **Mod**: = "MOD"

*Defined in [ethereum-types/src/index.ts:152](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L152)*

___

###  Mul

• **Mul**: = "MUL"

*Defined in [ethereum-types/src/index.ts:148](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L148)*

___

###  MulMod

• **MulMod**: = "MULMOD"

*Defined in [ethereum-types/src/index.ts:155](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L155)*

___

###  Not

• **Not**: = "NOT"

*Defined in [ethereum-types/src/index.ts:168](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L168)*

___

###  Number

• **Number**: = "NUMBER"

*Defined in [ethereum-types/src/index.ts:192](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L192)*

___

###  Or

• **Or**: = "OR"

*Defined in [ethereum-types/src/index.ts:166](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L166)*

___

###  Origin

• **Origin**: = "ORIGIN"

*Defined in [ethereum-types/src/index.ts:175](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L175)*

___

###  Pc

• **Pc**: = "PC"

*Defined in [ethereum-types/src/index.ts:204](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L204)*

___

###  Pop

• **Pop**: = "POP"

*Defined in [ethereum-types/src/index.ts:196](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L196)*

___

###  Push1

• **Push1**: = "PUSH1"

*Defined in [ethereum-types/src/index.ts:209](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L209)*

___

###  Push10

• **Push10**: = "PUSH10"

*Defined in [ethereum-types/src/index.ts:218](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L218)*

___

###  Push11

• **Push11**: = "PUSH11"

*Defined in [ethereum-types/src/index.ts:219](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L219)*

___

###  Push12

• **Push12**: = "PUSH12"

*Defined in [ethereum-types/src/index.ts:220](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L220)*

___

###  Push13

• **Push13**: = "PUSH13"

*Defined in [ethereum-types/src/index.ts:221](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L221)*

___

###  Push14

• **Push14**: = "PUSH14"

*Defined in [ethereum-types/src/index.ts:222](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L222)*

___

###  Push15

• **Push15**: = "PUSH15"

*Defined in [ethereum-types/src/index.ts:223](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L223)*

___

###  Push16

• **Push16**: = "PUSH16"

*Defined in [ethereum-types/src/index.ts:224](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L224)*

___

###  Push17

• **Push17**: = "PUSH17"

*Defined in [ethereum-types/src/index.ts:225](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L225)*

___

###  Push18

• **Push18**: = "PUSH18"

*Defined in [ethereum-types/src/index.ts:226](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L226)*

___

###  Push19

• **Push19**: = "PUSH19"

*Defined in [ethereum-types/src/index.ts:227](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L227)*

___

###  Push2

• **Push2**: = "PUSH2"

*Defined in [ethereum-types/src/index.ts:210](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L210)*

___

###  Push20

• **Push20**: = "PUSH20"

*Defined in [ethereum-types/src/index.ts:228](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L228)*

___

###  Push21

• **Push21**: = "PUSH21"

*Defined in [ethereum-types/src/index.ts:229](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L229)*

___

###  Push22

• **Push22**: = "PUSH22"

*Defined in [ethereum-types/src/index.ts:230](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L230)*

___

###  Push23

• **Push23**: = "PUSH23"

*Defined in [ethereum-types/src/index.ts:231](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L231)*

___

###  Push24

• **Push24**: = "PUSH24"

*Defined in [ethereum-types/src/index.ts:232](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L232)*

___

###  Push25

• **Push25**: = "PUSH25"

*Defined in [ethereum-types/src/index.ts:233](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L233)*

___

###  Push26

• **Push26**: = "PUSH26"

*Defined in [ethereum-types/src/index.ts:234](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L234)*

___

###  Push27

• **Push27**: = "PUSH27"

*Defined in [ethereum-types/src/index.ts:235](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L235)*

___

###  Push28

• **Push28**: = "PUSH28"

*Defined in [ethereum-types/src/index.ts:236](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L236)*

___

###  Push29

• **Push29**: = "PUSH29"

*Defined in [ethereum-types/src/index.ts:237](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L237)*

___

###  Push3

• **Push3**: = "PUSH3"

*Defined in [ethereum-types/src/index.ts:211](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L211)*

___

###  Push30

• **Push30**: = "PUSH30"

*Defined in [ethereum-types/src/index.ts:238](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L238)*

___

###  Push31

• **Push31**: = "PUSH31"

*Defined in [ethereum-types/src/index.ts:239](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L239)*

___

###  Push32

• **Push32**: = "PUSH32"

*Defined in [ethereum-types/src/index.ts:240](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L240)*

___

###  Push4

• **Push4**: = "PUSH4"

*Defined in [ethereum-types/src/index.ts:212](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L212)*

___

###  Push5

• **Push5**: = "PUSH5"

*Defined in [ethereum-types/src/index.ts:213](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L213)*

___

###  Push6

• **Push6**: = "PUSH6"

*Defined in [ethereum-types/src/index.ts:214](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L214)*

___

###  Push7

• **Push7**: = "PUSH7"

*Defined in [ethereum-types/src/index.ts:215](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L215)*

___

###  Push8

• **Push8**: = "PUSH8"

*Defined in [ethereum-types/src/index.ts:216](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L216)*

___

###  Push9

• **Push9**: = "PUSH9"

*Defined in [ethereum-types/src/index.ts:217](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L217)*

___

###  Return

• **Return**: = "RETURN"

*Defined in [ethereum-types/src/index.ts:284](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L284)*

___

###  ReturnDataCopy

• **ReturnDataCopy**: = "RETURNDATACOPY"

*Defined in [ethereum-types/src/index.ts:187](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L187)*

___

###  ReturnDataSize

• **ReturnDataSize**: = "RETURNDATASIZE"

*Defined in [ethereum-types/src/index.ts:186](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L186)*

___

###  Revert

• **Revert**: = "REVERT"

*Defined in [ethereum-types/src/index.ts:287](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L287)*

___

###  SDiv

• **SDiv**: = "SDIV"

*Defined in [ethereum-types/src/index.ts:151](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L151)*

___

###  SGt

• **SGt**: = "SGT"

*Defined in [ethereum-types/src/index.ts:162](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L162)*

___

###  SLoad

• **SLoad**: = "SLOAD"

*Defined in [ethereum-types/src/index.ts:200](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L200)*

___

###  SLt

• **SLt**: = "SLT"

*Defined in [ethereum-types/src/index.ts:161](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L161)*

___

###  SMod

• **SMod**: = "SMOD"

*Defined in [ethereum-types/src/index.ts:153](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L153)*

___

###  SStore

• **SStore**: = "SSTORE"

*Defined in [ethereum-types/src/index.ts:201](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L201)*

___

###  SelfDestruct

• **SelfDestruct**: = "SELFDESTRUCT"

*Defined in [ethereum-types/src/index.ts:289](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L289)*

___

###  Sha3

• **Sha3**: = "SHA3"

*Defined in [ethereum-types/src/index.ts:171](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L171)*

___

###  SignExtend

• **SignExtend**: = "SIGNEXTEND"

*Defined in [ethereum-types/src/index.ts:157](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L157)*

___

###  StaticCall

• **StaticCall**: = "STATICCALL"

*Defined in [ethereum-types/src/index.ts:286](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L286)*

___

###  Stop

• **Stop**: = "STOP"

*Defined in [ethereum-types/src/index.ts:146](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L146)*

___

###  Sub

• **Sub**: = "SUB"

*Defined in [ethereum-types/src/index.ts:149](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L149)*

___

###  Swap1

• **Swap1**: = "SWAP1"

*Defined in [ethereum-types/src/index.ts:259](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L259)*

___

###  Swap10

• **Swap10**: = "SWAP10"

*Defined in [ethereum-types/src/index.ts:268](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L268)*

___

###  Swap11

• **Swap11**: = "SWAP11"

*Defined in [ethereum-types/src/index.ts:269](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L269)*

___

###  Swap12

• **Swap12**: = "SWAP12"

*Defined in [ethereum-types/src/index.ts:270](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L270)*

___

###  Swap13

• **Swap13**: = "SWAP13"

*Defined in [ethereum-types/src/index.ts:271](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L271)*

___

###  Swap14

• **Swap14**: = "SWAP14"

*Defined in [ethereum-types/src/index.ts:272](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L272)*

___

###  Swap15

• **Swap15**: = "SWAP15"

*Defined in [ethereum-types/src/index.ts:273](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L273)*

___

###  Swap16

• **Swap16**: = "SWAP16"

*Defined in [ethereum-types/src/index.ts:274](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L274)*

___

###  Swap2

• **Swap2**: = "SWAP2"

*Defined in [ethereum-types/src/index.ts:260](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L260)*

___

###  Swap3

• **Swap3**: = "SWAP3"

*Defined in [ethereum-types/src/index.ts:261](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L261)*

___

###  Swap4

• **Swap4**: = "SWAP4"

*Defined in [ethereum-types/src/index.ts:262](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L262)*

___

###  Swap5

• **Swap5**: = "SWAP5"

*Defined in [ethereum-types/src/index.ts:263](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L263)*

___

###  Swap6

• **Swap6**: = "SWAP6"

*Defined in [ethereum-types/src/index.ts:264](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L264)*

___

###  Swap7

• **Swap7**: = "SWAP7"

*Defined in [ethereum-types/src/index.ts:265](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L265)*

___

###  Swap8

• **Swap8**: = "SWAP8"

*Defined in [ethereum-types/src/index.ts:266](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L266)*

___

###  Swap9

• **Swap9**: = "SWAP9"

*Defined in [ethereum-types/src/index.ts:267](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L267)*

___

###  TimeStamp

• **TimeStamp**: = "TimeStamp"

*Defined in [ethereum-types/src/index.ts:191](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L191)*

___

###  Xor

• **Xor**: = "XOR"

*Defined in [ethereum-types/src/index.ts:167](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L167)*

<hr />



# Enumeration: NodeType


##  Enumeration members

###  Ganache

• **Ganache**: = "GANACHE"

*Defined in [web3-wrapper/src/types.ts:91](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L91)*

___

###  Geth

• **Geth**: = "GETH"

*Defined in [web3-wrapper/src/types.ts:90](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L90)*

<hr />

# Enumeration: Web3WrapperErrors


##  Enumeration members

###  TransactionMiningTimeout

• **TransactionMiningTimeout**: = "TRANSACTION_MINING_TIMEOUT"

*Defined in [web3-wrapper/src/types.ts:2](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L2)*

<hr />





# Interface: BlockWithoutTransactionData


##   Properties

###  difficulty

• **difficulty**: *`BigNumber`*

*Inherited from [AbstractBlock](#interface-abstractblock).[difficulty](#difficulty)*

*Defined in [ethereum-types/src/index.ts:356](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L356)*

___

###  extraData

• **extraData**: *string*

*Inherited from [AbstractBlock](#interface-abstractblock).[extraData](#extradata)*

*Defined in [ethereum-types/src/index.ts:358](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L358)*

___

###  gasLimit

• **gasLimit**: *number*

*Inherited from [AbstractBlock](#interface-abstractblock).[gasLimit](#gaslimit)*

*Defined in [ethereum-types/src/index.ts:360](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L360)*

___

###  gasUsed

• **gasUsed**: *number*

*Inherited from [AbstractBlock](#interface-abstractblock).[gasUsed](#gasused)*

*Defined in [ethereum-types/src/index.ts:361](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L361)*

___

###  hash

• **hash**: *string | null*

*Inherited from [AbstractBlock](#interface-abstractblock).[hash](#hash)*

*Defined in [ethereum-types/src/index.ts:348](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L348)*

___

###  logsBloom

• **logsBloom**: *string | null*

*Inherited from [AbstractBlock](#interface-abstractblock).[logsBloom](#logsbloom)*

*Defined in [ethereum-types/src/index.ts:352](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L352)*

___

###  miner

• **miner**: *string*

*Inherited from [AbstractBlock](#interface-abstractblock).[miner](#miner)*

*Defined in [ethereum-types/src/index.ts:355](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L355)*

___

###  nonce

• **nonce**: *string | null*

*Inherited from [AbstractBlock](#interface-abstractblock).[nonce](#nonce)*

*Defined in [ethereum-types/src/index.ts:350](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L350)*

___

###  number

• **number**: *number | null*

*Inherited from [AbstractBlock](#interface-abstractblock).[number](#number)*

*Defined in [ethereum-types/src/index.ts:347](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L347)*

___

###  parentHash

• **parentHash**: *string*

*Inherited from [AbstractBlock](#interface-abstractblock).[parentHash](#parenthash)*

*Defined in [ethereum-types/src/index.ts:349](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L349)*

___

###  sha3Uncles

• **sha3Uncles**: *string*

*Inherited from [AbstractBlock](#interface-abstractblock).[sha3Uncles](#sha3uncles)*

*Defined in [ethereum-types/src/index.ts:351](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L351)*

___

###  size

• **size**: *number*

*Inherited from [AbstractBlock](#interface-abstractblock).[size](#size)*

*Defined in [ethereum-types/src/index.ts:359](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L359)*

___

###  stateRoot

• **stateRoot**: *string*

*Inherited from [AbstractBlock](#interface-abstractblock).[stateRoot](#stateroot)*

*Defined in [ethereum-types/src/index.ts:354](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L354)*

___

###  timestamp

• **timestamp**: *number*

*Inherited from [AbstractBlock](#interface-abstractblock).[timestamp](#timestamp)*

*Defined in [ethereum-types/src/index.ts:362](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L362)*

___

###  totalDifficulty

• **totalDifficulty**: *`BigNumber`*

*Inherited from [AbstractBlock](#interface-abstractblock).[totalDifficulty](#totaldifficulty)*

*Defined in [ethereum-types/src/index.ts:357](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L357)*

___

###  transactions

• **transactions**: *string[]*

*Defined in [ethereum-types/src/index.ts:367](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L367)*

___

###  transactionsRoot

• **transactionsRoot**: *string*

*Inherited from [AbstractBlock](#interface-abstractblock).[transactionsRoot](#transactionsroot)*

*Defined in [ethereum-types/src/index.ts:353](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L353)*

___

###  uncles

• **uncles**: *string[]*

*Inherited from [AbstractBlock](#interface-abstractblock).[uncles](#uncles)*

*Defined in [ethereum-types/src/index.ts:363](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L363)*

<hr />

# Interface: BlockWithTransactionData


##   Properties

###  difficulty

• **difficulty**: *`BigNumber`*

*Inherited from [AbstractBlock](#interface-abstractblock).[difficulty](#difficulty)*

*Defined in [ethereum-types/src/index.ts:356](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L356)*

___

###  extraData

• **extraData**: *string*

*Inherited from [AbstractBlock](#interface-abstractblock).[extraData](#extradata)*

*Defined in [ethereum-types/src/index.ts:358](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L358)*

___

###  gasLimit

• **gasLimit**: *number*

*Inherited from [AbstractBlock](#interface-abstractblock).[gasLimit](#gaslimit)*

*Defined in [ethereum-types/src/index.ts:360](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L360)*

___

###  gasUsed

• **gasUsed**: *number*

*Inherited from [AbstractBlock](#interface-abstractblock).[gasUsed](#gasused)*

*Defined in [ethereum-types/src/index.ts:361](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L361)*

___

###  hash

• **hash**: *string | null*

*Inherited from [AbstractBlock](#interface-abstractblock).[hash](#hash)*

*Defined in [ethereum-types/src/index.ts:348](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L348)*

___

###  logsBloom

• **logsBloom**: *string | null*

*Inherited from [AbstractBlock](#interface-abstractblock).[logsBloom](#logsbloom)*

*Defined in [ethereum-types/src/index.ts:352](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L352)*

___

###  miner

• **miner**: *string*

*Inherited from [AbstractBlock](#interface-abstractblock).[miner](#miner)*

*Defined in [ethereum-types/src/index.ts:355](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L355)*

___

###  nonce

• **nonce**: *string | null*

*Inherited from [AbstractBlock](#interface-abstractblock).[nonce](#nonce)*

*Defined in [ethereum-types/src/index.ts:350](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L350)*

___

###  number

• **number**: *number | null*

*Inherited from [AbstractBlock](#interface-abstractblock).[number](#number)*

*Defined in [ethereum-types/src/index.ts:347](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L347)*

___

###  parentHash

• **parentHash**: *string*

*Inherited from [AbstractBlock](#interface-abstractblock).[parentHash](#parenthash)*

*Defined in [ethereum-types/src/index.ts:349](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L349)*

___

###  sha3Uncles

• **sha3Uncles**: *string*

*Inherited from [AbstractBlock](#interface-abstractblock).[sha3Uncles](#sha3uncles)*

*Defined in [ethereum-types/src/index.ts:351](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L351)*

___

###  size

• **size**: *number*

*Inherited from [AbstractBlock](#interface-abstractblock).[size](#size)*

*Defined in [ethereum-types/src/index.ts:359](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L359)*

___

###  stateRoot

• **stateRoot**: *string*

*Inherited from [AbstractBlock](#interface-abstractblock).[stateRoot](#stateroot)*

*Defined in [ethereum-types/src/index.ts:354](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L354)*

___

###  timestamp

• **timestamp**: *number*

*Inherited from [AbstractBlock](#interface-abstractblock).[timestamp](#timestamp)*

*Defined in [ethereum-types/src/index.ts:362](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L362)*

___

###  totalDifficulty

• **totalDifficulty**: *`BigNumber`*

*Inherited from [AbstractBlock](#interface-abstractblock).[totalDifficulty](#totaldifficulty)*

*Defined in [ethereum-types/src/index.ts:357](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L357)*

___

###  transactions

• **transactions**: *[Transaction](#class-transaction)[]*

*Defined in [ethereum-types/src/index.ts:371](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L371)*

___

###  transactionsRoot

• **transactionsRoot**: *string*

*Inherited from [AbstractBlock](#interface-abstractblock).[transactionsRoot](#transactionsroot)*

*Defined in [ethereum-types/src/index.ts:353](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L353)*

___

###  uncles

• **uncles**: *string[]*

*Inherited from [AbstractBlock](#interface-abstractblock).[uncles](#uncles)*

*Defined in [ethereum-types/src/index.ts:363](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L363)*

<hr />

# Interface: CallData


##   Properties

### `Optional` data

• **data**? : *undefined | string*

*Inherited from [CallTxDataBase](#interface-calltxdatabase).[data](#optional-data)*

*Defined in [ethereum-types/src/index.ts:393](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L393)*

___

### `Optional` from

• **from**? : *undefined | string*

*Defined in [ethereum-types/src/index.ts:402](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L402)*

___

### `Optional` gas

• **gas**? : *number | string | `BigNumber`*

*Inherited from [CallTxDataBase](#interface-calltxdatabase).[gas](#optional-gas)*

*Defined in [ethereum-types/src/index.ts:391](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L391)*

___

### `Optional` gasPrice

• **gasPrice**? : *number | string | `BigNumber`*

*Inherited from [CallTxDataBase](#interface-calltxdatabase).[gasPrice](#optional-gasprice)*

*Defined in [ethereum-types/src/index.ts:392](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L392)*

___

### `Optional` nonce

• **nonce**? : *undefined | number*

*Inherited from [CallTxDataBase](#interface-calltxdatabase).[nonce](#optional-nonce)*

*Defined in [ethereum-types/src/index.ts:394](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L394)*

___

### `Optional` to

• **to**? : *undefined | string*

*Inherited from [CallTxDataBase](#interface-calltxdatabase).[to](#optional-to)*

*Defined in [ethereum-types/src/index.ts:389](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L389)*

___

### `Optional` value

• **value**? : *number | string | `BigNumber`*

*Inherited from [CallTxDataBase](#interface-calltxdatabase).[value](#optional-value)*

*Defined in [ethereum-types/src/index.ts:390](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L390)*

<hr />











# Interface: ConstructorAbi


##   Properties

###  inputs

• **inputs**: *[DataItem](#class-dataitem)[]*

*Defined in [ethereum-types/src/index.ts:103](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L103)*

___

###  payable

• **payable**: *boolean*

*Defined in [ethereum-types/src/index.ts:104](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L104)*

___

###  stateMutability

• **stateMutability**: *[ConstructorStateMutability](#constructorstatemutability)*

*Defined in [ethereum-types/src/index.ts:105](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L105)*

___

###  type

• **type**: *string*

*Defined in [ethereum-types/src/index.ts:102](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L102)*

<hr />







# Interface: DataItem


##   Properties

### `Optional` components

• **components**? : *[DataItem](#class-dataitem)[]*

*Defined in [ethereum-types/src/index.ts:137](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L137)*

___

###  name

• **name**: *string*

*Defined in [ethereum-types/src/index.ts:135](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L135)*

___

###  type

• **type**: *string*

*Defined in [ethereum-types/src/index.ts:136](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L136)*

<hr />

# Interface: DecodedLogArgs


##  Type parameters

▪ **A**


##   Properties

###  address

• **address**: *string*

*Inherited from [LogEntry](#interface-logentry).[address](#address)*

*Defined in [ethereum-types/src/index.ts:434](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L434)*

___

###  args

• **args**: *`A`*

*Defined in [ethereum-types/src/index.ts:417](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L417)*

___

###  blockHash

• **blockHash**: *string | null*

*Inherited from [LogEntry](#interface-logentry).[blockHash](#blockhash)*

*Defined in [ethereum-types/src/index.ts:432](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L432)*

___

###  blockNumber

• **blockNumber**: *number | null*

*Inherited from [LogEntry](#interface-logentry).[blockNumber](#blocknumber)*

*Defined in [ethereum-types/src/index.ts:433](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L433)*

___

###  data

• **data**: *string*

*Inherited from [LogEntry](#interface-logentry).[data](#data)*

*Defined in [ethereum-types/src/index.ts:435](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L435)*

___

###  event

• **event**: *string*

*Defined in [ethereum-types/src/index.ts:416](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L416)*

___

###  logIndex

• **logIndex**: *number | null*

*Inherited from [LogEntry](#interface-logentry).[logIndex](#logindex)*

*Defined in [ethereum-types/src/index.ts:429](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L429)*

___

###  topics

• **topics**: *string[]*

*Inherited from [LogEntry](#interface-logentry).[topics](#topics)*

*Defined in [ethereum-types/src/index.ts:436](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L436)*

___

###  transactionHash

• **transactionHash**: *string*

*Inherited from [LogEntry](#interface-logentry).[transactionHash](#transactionhash)*

*Defined in [ethereum-types/src/index.ts:431](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L431)*

___

###  transactionIndex

• **transactionIndex**: *number | null*

*Inherited from [LogEntry](#interface-logentry).[transactionIndex](#transactionindex)*

*Defined in [ethereum-types/src/index.ts:430](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L430)*

<hr />

# Interface: DecodedLogEntryEvent <**A**>

## Type parameters

▪ **A**


##   Properties

###  address

• **address**: *string*

*Inherited from [LogEntry](#interface-logentry).[address](#address)*

*Defined in [ethereum-types/src/index.ts:434](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L434)*

___

###  args

• **args**: *`A`*

*Inherited from [DecodedLogEntry](#interface-decodedlogentry).[args](#args)*

*Defined in [ethereum-types/src/index.ts:417](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L417)*

___

###  blockHash

• **blockHash**: *string | null*

*Inherited from [LogEntry](#interface-logentry).[blockHash](#blockhash)*

*Defined in [ethereum-types/src/index.ts:432](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L432)*

___

###  blockNumber

• **blockNumber**: *number | null*

*Inherited from [LogEntry](#interface-logentry).[blockNumber](#blocknumber)*

*Defined in [ethereum-types/src/index.ts:433](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L433)*

___

###  data

• **data**: *string*

*Inherited from [LogEntry](#interface-logentry).[data](#data)*

*Defined in [ethereum-types/src/index.ts:435](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L435)*

___

###  event

• **event**: *string*

*Inherited from [DecodedLogEntry](#interface-decodedlogentry).[event](#event)*

*Defined in [ethereum-types/src/index.ts:416](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L416)*

___

###  logIndex

• **logIndex**: *number | null*

*Inherited from [LogEntry](#interface-logentry).[logIndex](#logindex)*

*Defined in [ethereum-types/src/index.ts:429](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L429)*

___

###  removed

• **removed**: *boolean*

*Defined in [ethereum-types/src/index.ts:421](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L421)*

___

###  topics

• **topics**: *string[]*

*Inherited from [LogEntry](#interface-logentry).[topics](#topics)*

*Defined in [ethereum-types/src/index.ts:436](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L436)*

___

###  transactionHash

• **transactionHash**: *string*

*Inherited from [LogEntry](#interface-logentry).[transactionHash](#transactionhash)*

*Defined in [ethereum-types/src/index.ts:431](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L431)*

___

###  transactionIndex

• **transactionIndex**: *number | null*

*Inherited from [LogEntry](#interface-logentry).[transactionIndex](#transactionindex)*

*Defined in [ethereum-types/src/index.ts:430](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L430)*

<hr />



# Interface: EIP1193Provider


##   Properties

###  isEIP1193

• **isEIP1193**: *boolean*

*Defined in [ethereum-types/src/index.ts:73](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L73)*

## Methods

###  on

▸ **on**(`event`: [EIP1193Event](#eip1193event), `listener`: function): *this*

*Defined in [ethereum-types/src/index.ts:75](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L75)*

**Parameters:**

▪ **event**: *[EIP1193Event](#eip1193event)*

▪ **listener**: *function*

▸ (`result`: any): *void*

**Parameters:**

Name | Type |
------ | ------ |
`result` | any |

**Returns:** *this*

___

###  send

▸ **send**(`method`: string, `params?`: any[]): *`Promise<any>`*

*Defined in [ethereum-types/src/index.ts:74](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L74)*

**Parameters:**

Name | Type |
------ | ------ |
`method` | string |
`params?` | any[] |

**Returns:** *`Promise<any>`*

<hr />

# Interface: EventAbi


##   Properties

###  anonymous

• **anonymous**: *boolean*

*Defined in [ethereum-types/src/index.ts:131](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L131)*

___

###  inputs

• **inputs**: *[EventParameter](#class-eventparameter)[]*

*Defined in [ethereum-types/src/index.ts:130](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L130)*

___

###  name

• **name**: *string*

*Defined in [ethereum-types/src/index.ts:129](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L129)*

___

###  type

• **type**: *string*

*Defined in [ethereum-types/src/index.ts:128](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L128)*

<hr />

# Interface: EventParameter


##   Properties

### `Optional` components

• **components**? : *[DataItem](#class-dataitem)[]*

*Inherited from [DataItem](#interface-dataitem).[components](#optional-components)*

*Defined in [ethereum-types/src/index.ts:137](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L137)*

___

###  indexed

• **indexed**: *boolean*

*Defined in [ethereum-types/src/index.ts:116](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L116)*

___

###  name

• **name**: *string*

*Inherited from [DataItem](#interface-dataitem).[name](#name)*

*Defined in [ethereum-types/src/index.ts:135](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L135)*

___

###  type

• **type**: *string*

*Inherited from [DataItem](#interface-dataitem).[type](#type)*

*Defined in [ethereum-types/src/index.ts:136](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L136)*

<hr />





# Interface: FallbackAbi


##   Properties

###  payable

• **payable**: *boolean*

*Defined in [ethereum-types/src/index.ts:112](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L112)*

___

###  type

• **type**: *string*

*Defined in [ethereum-types/src/index.ts:111](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L111)*

<hr />

# Interface: FilterObject


##   Properties

### `Optional` address

• **address**? : *undefined | string*

*Defined in [ethereum-types/src/index.ts:409](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L409)*

___

### `Optional` blockHash

• **blockHash**? : *undefined | string*

*Defined in [ethereum-types/src/index.ts:408](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L408)*

___

### `Optional` fromBlock

• **fromBlock**? : *number | string*

*Defined in [ethereum-types/src/index.ts:406](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L406)*

___

### `Optional` toBlock

• **toBlock**? : *number | string*

*Defined in [ethereum-types/src/index.ts:407](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L407)*

___

### `Optional` topics

• **topics**? : *[LogTopic](#logtopic)[]*

*Defined in [ethereum-types/src/index.ts:410](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L410)*

<hr />

# Interface: GanacheProvider


##   Methods

###  sendAsync

▸ **sendAsync**(`payload`: [JSONRPCRequestPayload](_ethereum_types_src_index_.jsonrpcrequestpayload.md), `callback`: [JSONRPCErrorCallback](#jsonrpcerrorcallback)): *void*

*Defined in [ethereum-types/src/index.ts:14](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L14)*

**Parameters:**

Name | Type |
------ | ------ |
`payload` | [JSONRPCRequestPayload](#class-jsonrpcrequestpayload) |
`callback` | [JSONRPCErrorCallback](#jsonrpcerrorcallback) |

**Returns:** *void*

<hr />



# Interface: JSONRPCRequestPayload


##   Properties

###  id

• **id**: *number*

*Defined in [ethereum-types/src/index.ts:330](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L330)*

___

###  jsonrpc

• **jsonrpc**: *string*

*Defined in [ethereum-types/src/index.ts:331](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L331)*

___

###  method

• **method**: *string*

*Defined in [ethereum-types/src/index.ts:329](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L329)*

___

###  params

• **params**: *any[]*

*Defined in [ethereum-types/src/index.ts:328](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L328)*

<hr />

# Interface: JSONRPCResponseError


##   Properties

###  code

• **code**: *number*

*Defined in [ethereum-types/src/index.ts:336](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L336)*

___

###  message

• **message**: *string*

*Defined in [ethereum-types/src/index.ts:335](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L335)*

<hr />

# Interface: JSONRPCResponsePayload


##   Properties

### `Optional` error

• **error**? : *[JSONRPCResponseError](#class-jsonrpcresponseerror)*

*Defined in [ethereum-types/src/index.ts:343](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L343)*

___

###  id

• **id**: *number*

*Defined in [ethereum-types/src/index.ts:341](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L341)*

___

###  jsonrpc

• **jsonrpc**: *string*

*Defined in [ethereum-types/src/index.ts:342](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L342)*

___

###  result

• **result**: *any*

*Defined in [ethereum-types/src/index.ts:340](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L340)*

<hr />

# Interface: LogEntry


##   Properties

###  address

• **address**: *string*

*Defined in [ethereum-types/src/index.ts:434](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L434)*

___

###  blockHash

• **blockHash**: *string | null*

*Defined in [ethereum-types/src/index.ts:432](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L432)*

___

###  blockNumber

• **blockNumber**: *number | null*

*Defined in [ethereum-types/src/index.ts:433](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L433)*

___

###  data

• **data**: *string*

*Defined in [ethereum-types/src/index.ts:435](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L435)*

___

###  logIndex

• **logIndex**: *number | null*

*Defined in [ethereum-types/src/index.ts:429](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L429)*

___

###  topics

• **topics**: *string[]*

*Defined in [ethereum-types/src/index.ts:436](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L436)*

___

###  transactionHash

• **transactionHash**: *string*

*Defined in [ethereum-types/src/index.ts:431](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L431)*

___

###  transactionIndex

• **transactionIndex**: *number | null*

*Defined in [ethereum-types/src/index.ts:430](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L430)*

<hr />

# Interface: LogEntryEvent


##   Properties

###  address

• **address**: *string*

*Inherited from [LogEntry](#interface-logentry).[address](#address)*

*Defined in [ethereum-types/src/index.ts:434](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L434)*

___

###  blockHash

• **blockHash**: *string | null*

*Inherited from [LogEntry](#interface-logentry).[blockHash](#blockhash)*

*Defined in [ethereum-types/src/index.ts:432](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L432)*

___

###  blockNumber

• **blockNumber**: *number | null*

*Inherited from [LogEntry](#interface-logentry).[blockNumber](#blocknumber)*

*Defined in [ethereum-types/src/index.ts:433](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L433)*

___

###  data

• **data**: *string*

*Inherited from [LogEntry](#interface-logentry).[data](#data)*

*Defined in [ethereum-types/src/index.ts:435](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L435)*

___

###  logIndex

• **logIndex**: *number | null*

*Inherited from [LogEntry](#interface-logentry).[logIndex](#logindex)*

*Defined in [ethereum-types/src/index.ts:429](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L429)*

___

###  removed

• **removed**: *boolean*

*Defined in [ethereum-types/src/index.ts:425](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L425)*

___

###  topics

• **topics**: *string[]*

*Inherited from [LogEntry](#interface-logentry).[topics](#topics)*

*Defined in [ethereum-types/src/index.ts:436](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L436)*

___

###  transactionHash

• **transactionHash**: *string*

*Inherited from [LogEntry](#interface-logentry).[transactionHash](#transactionhash)*

*Defined in [ethereum-types/src/index.ts:431](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L431)*

___

###  transactionIndex

• **transactionIndex**: *number | null*

*Inherited from [LogEntry](#interface-logentry).[transactionIndex](#transactionindex)*

*Defined in [ethereum-types/src/index.ts:430](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L430)*

<hr />

# Interface: LogWithDecodedArgs <**ArgsType**>

## Type parameters

▪ **ArgsType**: *[DecodedLogArgs](#class-decodedlogargs)*


##   Properties

###  address

• **address**: *string*

*Inherited from [LogEntry](#interface-logentry).[address](#address)*

*Defined in [ethereum-types/src/index.ts:434](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L434)*

___

###  args

• **args**: *`ArgsType`*

*Inherited from [DecodedLogEntry](#interface-decodedlogentry).[args](#args)*

*Defined in [ethereum-types/src/index.ts:417](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L417)*

___

###  blockHash

• **blockHash**: *string | null*

*Inherited from [LogEntry](#interface-logentry).[blockHash](#blockhash)*

*Defined in [ethereum-types/src/index.ts:432](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L432)*

___

###  blockNumber

• **blockNumber**: *number | null*

*Inherited from [LogEntry](#interface-logentry).[blockNumber](#blocknumber)*

*Defined in [ethereum-types/src/index.ts:433](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L433)*

___

###  data

• **data**: *string*

*Inherited from [LogEntry](#interface-logentry).[data](#data)*

*Defined in [ethereum-types/src/index.ts:435](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L435)*

___

###  event

• **event**: *string*

*Inherited from [DecodedLogEntry](#interface-decodedlogentry).[event](#event)*

*Defined in [ethereum-types/src/index.ts:416](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L416)*

___

###  logIndex

• **logIndex**: *number | null*

*Inherited from [LogEntry](#interface-logentry).[logIndex](#logindex)*

*Defined in [ethereum-types/src/index.ts:429](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L429)*

___

###  topics

• **topics**: *string[]*

*Inherited from [LogEntry](#interface-logentry).[topics](#topics)*

*Defined in [ethereum-types/src/index.ts:436](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L436)*

___

###  transactionHash

• **transactionHash**: *string*

*Inherited from [LogEntry](#interface-logentry).[transactionHash](#transactionhash)*

*Defined in [ethereum-types/src/index.ts:431](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L431)*

___

###  transactionIndex

• **transactionIndex**: *number | null*

*Inherited from [LogEntry](#interface-logentry).[transactionIndex](#transactionindex)*

*Defined in [ethereum-types/src/index.ts:430](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L430)*

<hr />

# Interface: MethodAbi


##   Properties

###  constant

• **constant**: *boolean*

*Defined in [ethereum-types/src/index.ts:94](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L94)*

___

###  inputs

• **inputs**: *[DataItem](#class-dataitem)[]*

*Defined in [ethereum-types/src/index.ts:92](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L92)*

___

###  name

• **name**: *string*

*Defined in [ethereum-types/src/index.ts:91](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L91)*

___

###  outputs

• **outputs**: *[DataItem](#class-dataitem)[]*

*Defined in [ethereum-types/src/index.ts:93](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L93)*

___

###  payable

• **payable**: *boolean*

*Defined in [ethereum-types/src/index.ts:96](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L96)*

___

###  stateMutability

• **stateMutability**: *[StateMutability](#statemutability)*

*Defined in [ethereum-types/src/index.ts:95](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L95)*

___

###  type

• **type**: *string*

*Defined in [ethereum-types/src/index.ts:90](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L90)*

<hr />





# Interface: RawLogEntry


##   Properties

###  address

• **address**: *string*

*Defined in [ethereum-types/src/index.ts:491](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L491)*

___

###  blockHash

• **blockHash**: *string | null*

*Defined in [ethereum-types/src/index.ts:489](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L489)*

___

###  blockNumber

• **blockNumber**: *string | null*

*Defined in [ethereum-types/src/index.ts:490](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L490)*

___

###  data

• **data**: *string*

*Defined in [ethereum-types/src/index.ts:492](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L492)*

___

###  logIndex

• **logIndex**: *string | null*

*Defined in [ethereum-types/src/index.ts:486](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L486)*

___

###  topics

• **topics**: *string[]*

*Defined in [ethereum-types/src/index.ts:493](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L493)*

___

###  transactionHash

• **transactionHash**: *string*

*Defined in [ethereum-types/src/index.ts:488](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L488)*

___

###  transactionIndex

• **transactionIndex**: *string | null*

*Defined in [ethereum-types/src/index.ts:487](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L487)*

<hr />

# Interface: RevertErrorAbi


##   Properties

### `Optional` arguments

• **arguments**? : *[DataItem](#class-dataitem)[]*

*Defined in [ethereum-types/src/index.ts:122](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L122)*

___

###  name

• **name**: *string*

*Defined in [ethereum-types/src/index.ts:121](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L121)*

___

###  type

• **type**: *"error"*

*Defined in [ethereum-types/src/index.ts:120](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L120)*

<hr />











# Interface: StructLog


##   Properties

###  depth

• **depth**: *number*

*Defined in [ethereum-types/src/index.ts:293](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L293)*

___

###  error

• **error**: *string*

*Defined in [ethereum-types/src/index.ts:294](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L294)*

___

###  gas

• **gas**: *number*

*Defined in [ethereum-types/src/index.ts:295](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L295)*

___

###  gasCost

• **gasCost**: *number*

*Defined in [ethereum-types/src/index.ts:296](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L296)*

___

###  memory

• **memory**: *string[]*

*Defined in [ethereum-types/src/index.ts:297](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L297)*

___

###  op

• **op**: *[OpCode](#enumeration-opcode)*

*Defined in [ethereum-types/src/index.ts:298](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L298)*

___

###  pc

• **pc**: *number*

*Defined in [ethereum-types/src/index.ts:299](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L299)*

___

###  stack

• **stack**: *string[]*

*Defined in [ethereum-types/src/index.ts:300](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L300)*

___

###  storage

• **storage**: *object*

*Defined in [ethereum-types/src/index.ts:301](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L301)*

#### Type declaration:

● \[▪ **location**: *string*\]: string

<hr />

# Interface: TraceParams


##   Properties

### `Optional` disableMemory

• **disableMemory**? : *undefined | false | true*

*Defined in [ethereum-types/src/index.ts:518](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L518)*

___

### `Optional` disableStack

• **disableStack**? : *undefined | false | true*

*Defined in [ethereum-types/src/index.ts:519](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L519)*

___

### `Optional` disableStorage

• **disableStorage**? : *undefined | false | true*

*Defined in [ethereum-types/src/index.ts:520](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L520)*

___

### `Optional` timeout

• **timeout**? : *undefined | string*

*Defined in [ethereum-types/src/index.ts:522](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L522)*

___

### `Optional` tracer

• **tracer**? : *undefined | string*

*Defined in [ethereum-types/src/index.ts:521](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L521)*

<hr />

# Interface: Transaction


##   Properties

###  blockHash

• **blockHash**: *string | null*

*Defined in [ethereum-types/src/index.ts:377](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L377)*

___

###  blockNumber

• **blockNumber**: *number | null*

*Defined in [ethereum-types/src/index.ts:378](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L378)*

___

###  from

• **from**: *string*

*Defined in [ethereum-types/src/index.ts:380](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L380)*

___

###  gas

• **gas**: *number*

*Defined in [ethereum-types/src/index.ts:384](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L384)*

___

###  gasPrice

• **gasPrice**: *`BigNumber`*

*Defined in [ethereum-types/src/index.ts:383](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L383)*

___

###  hash

• **hash**: *string*

*Defined in [ethereum-types/src/index.ts:375](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L375)*

___

###  input

• **input**: *string*

*Defined in [ethereum-types/src/index.ts:385](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L385)*

___

###  nonce

• **nonce**: *number*

*Defined in [ethereum-types/src/index.ts:376](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L376)*

___

###  to

• **to**: *string | null*

*Defined in [ethereum-types/src/index.ts:381](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L381)*

___

###  transactionIndex

• **transactionIndex**: *number | null*

*Defined in [ethereum-types/src/index.ts:379](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L379)*

___

###  value

• **value**: *`BigNumber`*

*Defined in [ethereum-types/src/index.ts:382](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L382)*

<hr />

# Interface: TransactionReceipt


##   Properties

###  blockHash

• **blockHash**: *string*

*Defined in [ethereum-types/src/index.ts:448](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L448)*

___

###  blockNumber

• **blockNumber**: *number*

*Defined in [ethereum-types/src/index.ts:449](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L449)*

___

###  contractAddress

• **contractAddress**: *string | null*

*Defined in [ethereum-types/src/index.ts:457](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L457)*

___

###  cumulativeGasUsed

• **cumulativeGasUsed**: *number*

*Defined in [ethereum-types/src/index.ts:455](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L455)*

___

###  from

• **from**: *string*

*Defined in [ethereum-types/src/index.ts:452](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L452)*

___

###  gasUsed

• **gasUsed**: *number*

*Defined in [ethereum-types/src/index.ts:456](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L456)*

___

###  logs

• **logs**: *[LogEntry](#class-logentry)[]*

*Defined in [ethereum-types/src/index.ts:458](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L458)*

___

###  status

• **status**: *[TransactionReceiptStatus](#transactionreceiptstatus)*

*Defined in [ethereum-types/src/index.ts:454](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L454)*

___

###  to

• **to**: *string*

*Defined in [ethereum-types/src/index.ts:453](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L453)*

___

###  transactionHash

• **transactionHash**: *string*

*Defined in [ethereum-types/src/index.ts:450](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L450)*

___

###  transactionIndex

• **transactionIndex**: *number*

*Defined in [ethereum-types/src/index.ts:451](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L451)*

<hr />

# Interface: TransactionReceiptWithDecodedLogs

Contains the logs returned by a TransactionReceipt. We attempt to decode the
logs using AbiDecoder. If we have the logs corresponding ABI, we decode it,
otherwise we don't.


##   Properties

###  blockHash

• **blockHash**: *string*

*Inherited from [TransactionReceipt](#interface-transactionreceipt).[blockHash](#blockhash)*

*Defined in [ethereum-types/src/index.ts:448](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L448)*

___

###  blockNumber

• **blockNumber**: *number*

*Inherited from [TransactionReceipt](#interface-transactionreceipt).[blockNumber](#blocknumber)*

*Defined in [ethereum-types/src/index.ts:449](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L449)*

___

###  contractAddress

• **contractAddress**: *string | null*

*Inherited from [TransactionReceipt](#interface-transactionreceipt).[contractAddress](#contractaddress)*

*Defined in [ethereum-types/src/index.ts:457](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L457)*

___

###  cumulativeGasUsed

• **cumulativeGasUsed**: *number*

*Inherited from [TransactionReceipt](#interface-transactionreceipt).[cumulativeGasUsed](#cumulativegasused)*

*Defined in [ethereum-types/src/index.ts:455](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L455)*

___

###  from

• **from**: *string*

*Inherited from [TransactionReceipt](#interface-transactionreceipt).[from](#from)*

*Defined in [ethereum-types/src/index.ts:452](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L452)*

___

###  gasUsed

• **gasUsed**: *number*

*Inherited from [TransactionReceipt](#interface-transactionreceipt).[gasUsed](#gasused)*

*Defined in [ethereum-types/src/index.ts:456](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L456)*

___

###  logs

• **logs**: *`Array<LogWithDecodedArgs<DecodedLogArgs> | LogEntry>`*

*Overrides [TransactionReceipt](_ethereum_types_src_index_.transactionreceipt.md).[logs](#logs)*

*Defined in [ethereum-types/src/index.ts:514](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L514)*

___

###  status

• **status**: *[TransactionReceiptStatus](#transactionreceiptstatus)*

*Inherited from [TransactionReceipt](#interface-transactionreceipt).[status](#status)*

*Defined in [ethereum-types/src/index.ts:454](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L454)*

___

###  to

• **to**: *string*

*Inherited from [TransactionReceipt](#interface-transactionreceipt).[to](#to)*

*Defined in [ethereum-types/src/index.ts:453](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L453)*

___

###  transactionHash

• **transactionHash**: *string*

*Inherited from [TransactionReceipt](#interface-transactionreceipt).[transactionHash](#transactionhash)*

*Defined in [ethereum-types/src/index.ts:450](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L450)*

___

###  transactionIndex

• **transactionIndex**: *number*

*Inherited from [TransactionReceipt](#interface-transactionreceipt).[transactionIndex](#transactionindex)*

*Defined in [ethereum-types/src/index.ts:451](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L451)*

<hr />

# Interface: TransactionTrace


##   Properties

###  gas

• **gas**: *number*

*Defined in [ethereum-types/src/index.ts:305](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L305)*

___

###  returnValue

• **returnValue**: *any*

*Defined in [ethereum-types/src/index.ts:306](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L306)*

___

###  structLogs

• **structLogs**: *[StructLog](#class-structlog)[]*

*Defined in [ethereum-types/src/index.ts:307](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L307)*

<hr />

# Interface: TupleDataItem


##   Properties

###  components

• **components**: *[DataItem](#class-dataitem)[]*

*Overrides [DataItem](_ethereum_types_src_index_.dataitem.md).[components](#optional-components)*

*Defined in [ethereum-types/src/index.ts:141](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L141)*

___

###  name

• **name**: *string*

*Inherited from [DataItem](#interface-dataitem).[name](#name)*

*Defined in [ethereum-types/src/index.ts:135](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L135)*

___

###  type

• **type**: *string*

*Inherited from [DataItem](#interface-dataitem).[type](#type)*

*Defined in [ethereum-types/src/index.ts:136](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L136)*

<hr />

# Interface: TxData


##   Properties

### `Optional` data

• **data**? : *undefined | string*

*Inherited from [CallTxDataBase](#interface-calltxdatabase).[data](#optional-data)*

*Defined in [ethereum-types/src/index.ts:393](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L393)*

___

###  from

• **from**: *string*

*Defined in [ethereum-types/src/index.ts:398](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L398)*

___

### `Optional` gas

• **gas**? : *number | string | `BigNumber`*

*Inherited from [CallTxDataBase](#interface-calltxdatabase).[gas](#optional-gas)*

*Defined in [ethereum-types/src/index.ts:391](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L391)*

___

### `Optional` gasPrice

• **gasPrice**? : *number | string | `BigNumber`*

*Inherited from [CallTxDataBase](#interface-calltxdatabase).[gasPrice](#optional-gasprice)*

*Defined in [ethereum-types/src/index.ts:392](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L392)*

___

### `Optional` nonce

• **nonce**? : *undefined | number*

*Inherited from [CallTxDataBase](#interface-calltxdatabase).[nonce](#optional-nonce)*

*Defined in [ethereum-types/src/index.ts:394](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L394)*

___

### `Optional` to

• **to**? : *undefined | string*

*Inherited from [CallTxDataBase](#interface-calltxdatabase).[to](#optional-to)*

*Defined in [ethereum-types/src/index.ts:389](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L389)*

___

### `Optional` value

• **value**? : *number | string | `BigNumber`*

*Inherited from [CallTxDataBase](#interface-calltxdatabase).[value](#optional-value)*

*Defined in [ethereum-types/src/index.ts:390](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L390)*

<hr />

# Interface: TxDataPayable


##   Properties

### `Optional` data

• **data**? : *undefined | string*

*Inherited from [CallTxDataBase](#interface-calltxdatabase).[data](#optional-data)*

*Defined in [ethereum-types/src/index.ts:393](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L393)*

___

###  from

• **from**: *string*

*Inherited from [TxData](#interface-txdata).[from](#from)*

*Defined in [ethereum-types/src/index.ts:398](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L398)*

___

### `Optional` gas

• **gas**? : *number | string | `BigNumber`*

*Inherited from [CallTxDataBase](#interface-calltxdatabase).[gas](#optional-gas)*

*Defined in [ethereum-types/src/index.ts:391](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L391)*

___

### `Optional` gasPrice

• **gasPrice**? : *number | string | `BigNumber`*

*Inherited from [CallTxDataBase](#interface-calltxdatabase).[gasPrice](#optional-gasprice)*

*Defined in [ethereum-types/src/index.ts:392](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L392)*

___

### `Optional` nonce

• **nonce**? : *undefined | number*

*Inherited from [CallTxDataBase](#interface-calltxdatabase).[nonce](#optional-nonce)*

*Defined in [ethereum-types/src/index.ts:394](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L394)*

___

### `Optional` to

• **to**? : *undefined | string*

*Inherited from [CallTxDataBase](#interface-calltxdatabase).[to](#optional-to)*

*Defined in [ethereum-types/src/index.ts:389](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L389)*

___

### `Optional` value

• **value**? : *`BigNumber`*

*Overrides [CallTxDataBase](_ethereum_types_src_index_.calltxdatabase.md).[value](#optional-value)*

*Defined in [ethereum-types/src/index.ts:442](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L442)*

<hr />

# Interface: Web3JsV1Provider

Web3.js version 1 provider interface
This provider interface was implemented in the pre-1.0Beta releases for Web3.js.
This interface allowed sending synchonous requests, support for which was later dropped.


##   Methods

###  send

▸ **send**(`payload`: [JSONRPCRequestPayload](_ethereum_types_src_index_.jsonrpcrequestpayload.md)): *[JSONRPCResponsePayload](#class-jsonrpcresponsepayload)*

*Defined in [ethereum-types/src/index.ts:45](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L45)*

**Parameters:**

Name | Type |
------ | ------ |
`payload` | [JSONRPCRequestPayload](#class-jsonrpcrequestpayload) |

**Returns:** *[JSONRPCResponsePayload](#class-jsonrpcresponsepayload)*

___

###  sendAsync

▸ **sendAsync**(`payload`: [JSONRPCRequestPayload](_ethereum_types_src_index_.jsonrpcrequestpayload.md), `callback`: [JSONRPCErrorCallback](#jsonrpcerrorcallback)): *void*

*Defined in [ethereum-types/src/index.ts:44](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L44)*

**Parameters:**

Name | Type |
------ | ------ |
`payload` | [JSONRPCRequestPayload](#class-jsonrpcrequestpayload) |
`callback` | [JSONRPCErrorCallback](#jsonrpcerrorcallback) |

**Returns:** *void*

<hr />

# Interface: Web3JsV2Provider

Web3.js version 2 provider interface
This provider interface was used in a couple of Web3.js 1.0 beta releases
before the first attempts to conform to EIP1193


##   Methods

###  send

▸ **send**(`payload`: [JSONRPCRequestPayload](_ethereum_types_src_index_.jsonrpcrequestpayload.md), `callback`: [JSONRPCErrorCallback](#jsonrpcerrorcallback)): *void*

*Defined in [ethereum-types/src/index.ts:54](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L54)*

**Parameters:**

Name | Type |
------ | ------ |
`payload` | [JSONRPCRequestPayload](#class-jsonrpcrequestpayload) |
`callback` | [JSONRPCErrorCallback](#jsonrpcerrorcallback) |

**Returns:** *void*

<hr />

# Interface: Web3JsV3Provider

Web3.js version 3 provider interface
This provider interface was implemented with the hopes for conforming to the EIP1193 spec,
however it does not conform entirely.


##   Methods

###  send

▸ **send**(`method`: string, `params?`: any[]): *`Promise<any>`*

*Defined in [ethereum-types/src/index.ts:63](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L63)*

**Parameters:**

Name | Type |
------ | ------ |
`method` | string |
`params?` | any[] |

**Returns:** *`Promise<any>`*

<hr />

# Interface: ZeroExProvider

The interface for the provider used internally by 0x libraries
Any property we use from any SupportedProvider should we explicitly
add here


##   Properties

### `Optional` isMetaMask

• **isMetaMask**? : *undefined | false | true*

*Defined in [ethereum-types/src/index.ts:31](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L31)*

___

### `Optional` isParity

• **isParity**? : *undefined | false | true*

*Defined in [ethereum-types/src/index.ts:32](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L32)*

___

### `Optional` isZeroExProvider

• **isZeroExProvider**? : *undefined | false | true*

*Defined in [ethereum-types/src/index.ts:30](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L30)*

## Methods

### `Optional` enable

▸ **enable**(): *`Promise<void>`*

*Defined in [ethereum-types/src/index.ts:34](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L34)*

**Returns:** *`Promise<void>`*

___

###  sendAsync

▸ **sendAsync**(`payload`: [JSONRPCRequestPayload](_ethereum_types_src_index_.jsonrpcrequestpayload.md), `callback`: [JSONRPCErrorCallback](#jsonrpcerrorcallback)): *void*

*Defined in [ethereum-types/src/index.ts:35](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L35)*

**Parameters:**

Name | Type |
------ | ------ |
`payload` | [JSONRPCRequestPayload](#class-jsonrpcrequestpayload) |
`callback` | [JSONRPCErrorCallback](#jsonrpcerrorcallback) |

**Returns:** *void*

___

### `Optional` stop

▸ **stop**(): *void*

*Defined in [ethereum-types/src/index.ts:33](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L33)*

**Returns:** *void*

<hr />



# Interface: BlockWithoutTransactionDataRPC


##   Properties

###  difficulty

• **difficulty**: *string*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[difficulty](#difficulty)*

*Defined in [web3-wrapper/src/types.ts:15](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L15)*

___

###  extraData

• **extraData**: *string*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[extraData](#extradata)*

*Defined in [web3-wrapper/src/types.ts:17](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L17)*

___

###  gasLimit

• **gasLimit**: *string*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[gasLimit](#gaslimit)*

*Defined in [web3-wrapper/src/types.ts:19](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L19)*

___

###  gasUsed

• **gasUsed**: *string*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[gasUsed](#gasused)*

*Defined in [web3-wrapper/src/types.ts:20](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L20)*

___

###  hash

• **hash**: *string | null*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[hash](#hash)*

*Defined in [web3-wrapper/src/types.ts:7](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L7)*

___

###  logsBloom

• **logsBloom**: *string | null*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[logsBloom](#logsbloom)*

*Defined in [web3-wrapper/src/types.ts:11](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L11)*

___

###  miner

• **miner**: *string*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[miner](#miner)*

*Defined in [web3-wrapper/src/types.ts:14](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L14)*

___

###  nonce

• **nonce**: *string | null*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[nonce](#nonce)*

*Defined in [web3-wrapper/src/types.ts:9](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L9)*

___

###  number

• **number**: *string | null*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[number](#number)*

*Defined in [web3-wrapper/src/types.ts:6](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L6)*

___

###  parentHash

• **parentHash**: *string*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[parentHash](#parenthash)*

*Defined in [web3-wrapper/src/types.ts:8](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L8)*

___

###  sha3Uncles

• **sha3Uncles**: *string*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[sha3Uncles](#sha3uncles)*

*Defined in [web3-wrapper/src/types.ts:10](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L10)*

___

###  size

• **size**: *string*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[size](#size)*

*Defined in [web3-wrapper/src/types.ts:18](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L18)*

___

###  stateRoot

• **stateRoot**: *string*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[stateRoot](#stateroot)*

*Defined in [web3-wrapper/src/types.ts:13](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L13)*

___

###  timestamp

• **timestamp**: *string*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[timestamp](#timestamp)*

*Defined in [web3-wrapper/src/types.ts:21](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L21)*

___

###  totalDifficulty

• **totalDifficulty**: *string*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[totalDifficulty](#totaldifficulty)*

*Defined in [web3-wrapper/src/types.ts:16](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L16)*

___

###  transactions

• **transactions**: *string[]*

*Defined in [web3-wrapper/src/types.ts:25](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L25)*

___

###  transactionsRoot

• **transactionsRoot**: *string*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[transactionsRoot](#transactionsroot)*

*Defined in [web3-wrapper/src/types.ts:12](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L12)*

___

###  uncles

• **uncles**: *string[]*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[uncles](#uncles)*

*Defined in [web3-wrapper/src/types.ts:22](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L22)*

<hr />

# Interface: BlockWithTransactionDataRPC


##   Properties

###  difficulty

• **difficulty**: *string*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[difficulty](#difficulty)*

*Defined in [web3-wrapper/src/types.ts:15](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L15)*

___

###  extraData

• **extraData**: *string*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[extraData](#extradata)*

*Defined in [web3-wrapper/src/types.ts:17](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L17)*

___

###  gasLimit

• **gasLimit**: *string*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[gasLimit](#gaslimit)*

*Defined in [web3-wrapper/src/types.ts:19](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L19)*

___

###  gasUsed

• **gasUsed**: *string*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[gasUsed](#gasused)*

*Defined in [web3-wrapper/src/types.ts:20](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L20)*

___

###  hash

• **hash**: *string | null*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[hash](#hash)*

*Defined in [web3-wrapper/src/types.ts:7](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L7)*

___

###  logsBloom

• **logsBloom**: *string | null*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[logsBloom](#logsbloom)*

*Defined in [web3-wrapper/src/types.ts:11](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L11)*

___

###  miner

• **miner**: *string*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[miner](#miner)*

*Defined in [web3-wrapper/src/types.ts:14](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L14)*

___

###  nonce

• **nonce**: *string | null*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[nonce](#nonce)*

*Defined in [web3-wrapper/src/types.ts:9](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L9)*

___

###  number

• **number**: *string | null*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[number](#number)*

*Defined in [web3-wrapper/src/types.ts:6](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L6)*

___

###  parentHash

• **parentHash**: *string*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[parentHash](#parenthash)*

*Defined in [web3-wrapper/src/types.ts:8](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L8)*

___

###  sha3Uncles

• **sha3Uncles**: *string*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[sha3Uncles](#sha3uncles)*

*Defined in [web3-wrapper/src/types.ts:10](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L10)*

___

###  size

• **size**: *string*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[size](#size)*

*Defined in [web3-wrapper/src/types.ts:18](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L18)*

___

###  stateRoot

• **stateRoot**: *string*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[stateRoot](#stateroot)*

*Defined in [web3-wrapper/src/types.ts:13](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L13)*

___

###  timestamp

• **timestamp**: *string*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[timestamp](#timestamp)*

*Defined in [web3-wrapper/src/types.ts:21](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L21)*

___

###  totalDifficulty

• **totalDifficulty**: *string*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[totalDifficulty](#totaldifficulty)*

*Defined in [web3-wrapper/src/types.ts:16](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L16)*

___

###  transactions

• **transactions**: *[TransactionRPC](#class-transactionrpc)[]*

*Defined in [web3-wrapper/src/types.ts:28](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L28)*

___

###  transactionsRoot

• **transactionsRoot**: *string*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[transactionsRoot](#transactionsroot)*

*Defined in [web3-wrapper/src/types.ts:12](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L12)*

___

###  uncles

• **uncles**: *string[]*

*Inherited from [AbstractBlockRPC](#interface-abstractblockrpc).[uncles](#uncles)*

*Defined in [web3-wrapper/src/types.ts:22](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L22)*

<hr />

# Interface: CallDataRPC


##   Properties

### `Optional` data

• **data**? : *undefined | string*

*Inherited from [CallTxDataBaseRPC](#interface-calltxdatabaserpc).[data](#optional-data)*

*Defined in [web3-wrapper/src/types.ts:76](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L76)*

___

### `Optional` from

• **from**? : *undefined | string*

*Defined in [web3-wrapper/src/types.ts:85](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L85)*

___

### `Optional` gas

• **gas**? : *undefined | string*

*Inherited from [CallTxDataBaseRPC](#interface-calltxdatabaserpc).[gas](#optional-gas)*

*Defined in [web3-wrapper/src/types.ts:74](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L74)*

___

### `Optional` gasPrice

• **gasPrice**? : *undefined | string*

*Inherited from [CallTxDataBaseRPC](#interface-calltxdatabaserpc).[gasPrice](#optional-gasprice)*

*Defined in [web3-wrapper/src/types.ts:75](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L75)*

___

### `Optional` nonce

• **nonce**? : *undefined | string*

*Inherited from [CallTxDataBaseRPC](#interface-calltxdatabaserpc).[nonce](#optional-nonce)*

*Defined in [web3-wrapper/src/types.ts:77](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L77)*

___

### `Optional` to

• **to**? : *undefined | string*

*Inherited from [CallTxDataBaseRPC](#interface-calltxdatabaserpc).[to](#optional-to)*

*Defined in [web3-wrapper/src/types.ts:72](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L72)*

___

### `Optional` value

• **value**? : *undefined | string*

*Inherited from [CallTxDataBaseRPC](#interface-calltxdatabaserpc).[value](#optional-value)*

*Defined in [web3-wrapper/src/types.ts:73](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L73)*

<hr />



# Interface: LogEntryRPC


##   Properties

###  address

• **address**: *string*

*Defined in [web3-wrapper/src/types.ts:64](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L64)*

___

###  blockHash

• **blockHash**: *string | null*

*Defined in [web3-wrapper/src/types.ts:62](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L62)*

___

###  blockNumber

• **blockNumber**: *string | null*

*Defined in [web3-wrapper/src/types.ts:63](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L63)*

___

###  data

• **data**: *string*

*Defined in [web3-wrapper/src/types.ts:65](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L65)*

___

###  logIndex

• **logIndex**: *string | null*

*Defined in [web3-wrapper/src/types.ts:59](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L59)*

___

###  topics

• **topics**: *string[]*

*Defined in [web3-wrapper/src/types.ts:66](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L66)*

___

###  transactionHash

• **transactionHash**: *string*

*Defined in [web3-wrapper/src/types.ts:61](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L61)*

___

###  transactionIndex

• **transactionIndex**: *string | null*

*Defined in [web3-wrapper/src/types.ts:60](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L60)*

<hr />

# Interface: TransactionReceiptRPC


##   Properties

###  blockHash

• **blockHash**: *string*

*Defined in [web3-wrapper/src/types.ts:45](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L45)*

___

###  blockNumber

• **blockNumber**: *string*

*Defined in [web3-wrapper/src/types.ts:46](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L46)*

___

###  contractAddress

• **contractAddress**: *string | null*

*Defined in [web3-wrapper/src/types.ts:54](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L54)*

___

###  cumulativeGasUsed

• **cumulativeGasUsed**: *string*

*Defined in [web3-wrapper/src/types.ts:52](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L52)*

___

###  from

• **from**: *string*

*Defined in [web3-wrapper/src/types.ts:49](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L49)*

___

###  gasUsed

• **gasUsed**: *string*

*Defined in [web3-wrapper/src/types.ts:53](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L53)*

___

###  logs

• **logs**: *[LogEntryRPC](#class-logentryrpc)[]*

*Defined in [web3-wrapper/src/types.ts:55](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L55)*

___

###  status

• **status**: *[TransactionReceiptStatusRPC](#transactionreceiptstatusrpc)*

*Defined in [web3-wrapper/src/types.ts:51](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L51)*

___

###  to

• **to**: *string*

*Defined in [web3-wrapper/src/types.ts:50](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L50)*

___

###  transactionHash

• **transactionHash**: *string*

*Defined in [web3-wrapper/src/types.ts:47](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L47)*

___

###  transactionIndex

• **transactionIndex**: *string*

*Defined in [web3-wrapper/src/types.ts:48](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L48)*

<hr />

# Interface: TransactionRPC


##   Properties

###  blockHash

• **blockHash**: *string | null*

*Defined in [web3-wrapper/src/types.ts:33](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L33)*

___

###  blockNumber

• **blockNumber**: *string | null*

*Defined in [web3-wrapper/src/types.ts:34](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L34)*

___

###  from

• **from**: *string*

*Defined in [web3-wrapper/src/types.ts:36](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L36)*

___

###  gas

• **gas**: *string*

*Defined in [web3-wrapper/src/types.ts:40](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L40)*

___

###  gasPrice

• **gasPrice**: *string*

*Defined in [web3-wrapper/src/types.ts:39](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L39)*

___

###  hash

• **hash**: *string*

*Defined in [web3-wrapper/src/types.ts:31](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L31)*

___

###  input

• **input**: *string*

*Defined in [web3-wrapper/src/types.ts:41](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L41)*

___

###  nonce

• **nonce**: *string*

*Defined in [web3-wrapper/src/types.ts:32](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L32)*

___

###  to

• **to**: *string | null*

*Defined in [web3-wrapper/src/types.ts:37](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L37)*

___

###  transactionIndex

• **transactionIndex**: *string | null*

*Defined in [web3-wrapper/src/types.ts:35](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L35)*

___

###  value

• **value**: *string*

*Defined in [web3-wrapper/src/types.ts:38](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L38)*

<hr />

# Interface: TxDataRPC


##   Properties

### `Optional` data

• **data**? : *undefined | string*

*Inherited from [CallTxDataBaseRPC](#interface-calltxdatabaserpc).[data](#optional-data)*

*Defined in [web3-wrapper/src/types.ts:76](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L76)*

___

###  from

• **from**: *string*

*Defined in [web3-wrapper/src/types.ts:81](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L81)*

___

### `Optional` gas

• **gas**? : *undefined | string*

*Inherited from [CallTxDataBaseRPC](#interface-calltxdatabaserpc).[gas](#optional-gas)*

*Defined in [web3-wrapper/src/types.ts:74](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L74)*

___

### `Optional` gasPrice

• **gasPrice**? : *undefined | string*

*Inherited from [CallTxDataBaseRPC](#interface-calltxdatabaserpc).[gasPrice](#optional-gasprice)*

*Defined in [web3-wrapper/src/types.ts:75](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L75)*

___

### `Optional` nonce

• **nonce**? : *undefined | string*

*Inherited from [CallTxDataBaseRPC](#interface-calltxdatabaserpc).[nonce](#optional-nonce)*

*Defined in [web3-wrapper/src/types.ts:77](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L77)*

___

### `Optional` to

• **to**? : *undefined | string*

*Inherited from [CallTxDataBaseRPC](#interface-calltxdatabaserpc).[to](#optional-to)*

*Defined in [web3-wrapper/src/types.ts:72](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L72)*

___

### `Optional` value

• **value**? : *undefined | string*

*Inherited from [CallTxDataBaseRPC](#interface-calltxdatabaserpc).[value](#optional-value)*

*Defined in [web3-wrapper/src/types.ts:73](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L73)*

<hr />




##  Type aliases

###  AbiDefinition

Ƭ **AbiDefinition**: *[FunctionAbi](_ethereum_types_src_index_.md#functionabi) | [EventAbi](#interface-eventabi) | [RevertErrorAbi](#interface-reverterrorabi)*

*Defined in [ethereum-types/src/index.ts:80](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L80)*

___

###  BlockParam

Ƭ **BlockParam**: *[BlockParamLiteral](#enumeration-blockparamliteral) | number*

*Defined in [ethereum-types/src/index.ts:483](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L483)*

___

###  ConstructorStateMutability

Ƭ **ConstructorStateMutability**: *"nonpayable" | "payable"*

*Defined in [ethereum-types/src/index.ts:84](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L84)*

___



###  ContractEventArg

Ƭ **ContractEventArg**: *any*

*Defined in [ethereum-types/src/index.ts:468](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L468)*

___



###  EIP1193Event

Ƭ **EIP1193Event**: *"accountsChanged" | "networkChanged" | "close" | "connect" | "notification"*

*Defined in [ethereum-types/src/index.ts:70](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L70)*

Interface for providers that conform to EIP 1193
Source: https://github.com/ethereum/EIPs/blob/master/EIPS/eip-1193.md

___





###  FunctionAbi

Ƭ **FunctionAbi**: *[MethodAbi](#interface-methodabi) | [ConstructorAbi](#interface-constructorabi) | [FallbackAbi](#interface-fallbackabi)*

*Defined in [ethereum-types/src/index.ts:82](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L82)*

___

###  JSONRPCErrorCallback

Ƭ **JSONRPCErrorCallback**: *function*

*Defined in [ethereum-types/src/index.ts:3](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L3)*

#### Type declaration:

▸ (`err`: `Error` | null, `result?`: [JSONRPCResponsePayload](#interface-jsonrpcresponsepayload)): *void*

**Parameters:**

Name | Type |
------ | ------ |
`err` | `Error` \| null |
`result?` | [JSONRPCResponsePayload](#interface-jsonrpcresponsepayload) |

___

###  LogTopic

Ƭ **LogTopic**: *null | string | string[]*

*Defined in [ethereum-types/src/index.ts:413](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L413)*

___





###  RawLog

Ƭ **RawLog**: *[LogEntry](#interface-logentry)*

*Defined in [ethereum-types/src/index.ts:475](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L475)*

___

###  StateMutability

Ƭ **StateMutability**: *"pure" | "view" | [ConstructorStateMutability](#constructorstatemutability)*

*Defined in [ethereum-types/src/index.ts:85](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L85)*

___

###  SupportedProvider

Ƭ **SupportedProvider**: *[Web3JsProvider](_ethereum_types_src_index_.md#web3jsprovider) | [GanacheProvider](#interface-ganacheprovider) | [EIP1193Provider](#interface-eip1193provider) | [ZeroExProvider](#interface-zeroexprovider)*

*Defined in [ethereum-types/src/index.ts:9](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L9)*

Do not create your own provider. Use an existing provider from a Web3 or ProviderEngine library
Read more about Providers in the guides section of the 0x docs.

___

###  TransactionReceiptStatus

Ƭ **TransactionReceiptStatus**: *null | string | `0` | `1`*

*Defined in [ethereum-types/src/index.ts:445](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L445)*

___



###  Web3JsProvider

Ƭ **Web3JsProvider**: *[Web3JsV1Provider](#interface-web3jsv1provider) | [Web3JsV2Provider](#interface-web3jsv2provider) | [Web3JsV3Provider](#interface-web3jsv3provider)*

*Defined in [ethereum-types/src/index.ts:11](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L11)*

<hr />



<hr /> 




##  Object literals

### `Const` marshaller

#### ▪ **marshaller**: *object*

*Defined in [web3-wrapper/src/marshaller.ts:33](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/marshaller.ts#L33)*

Utils to convert ethereum structures from user-space format to RPC format. (marshall/unmarshall)

####  _marshalCallTxDataBase

▸ **_marshalCallTxDataBase**(`callTxDataBase`: `Partial<CallTxDataBase>`): *`Partial<CallTxDataBaseRPC>`*

*Defined in [web3-wrapper/src/marshaller.ts:208](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/marshaller.ts#L208)*

**Parameters:**

Name | Type |
------ | ------ |
`callTxDataBase` | `Partial<CallTxDataBase>` |

**Returns:** *`Partial<CallTxDataBaseRPC>`*

####  marshalAddress

▸ **marshalAddress**(`address`: string): *string*

*Defined in [web3-wrapper/src/marshaller.ts:176](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/marshaller.ts#L176)*

Marshall address

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`address` | string | address to marshall |

**Returns:** *string*

marshalled address

####  marshalBlockParam

▸ **marshalBlockParam**(`blockParam`: [BlockParam](#blockparam) | string | number | undefined): *string | undefined*

*Defined in [web3-wrapper/src/marshaller.ts:187](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/marshaller.ts#L187)*

Marshall block param

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`blockParam` | [BlockParam](#blockparam) \| string \| number \| undefined | block param to marshall |

**Returns:** *string | undefined*

marshalled block param

####  marshalCallData

▸ **marshalCallData**(`callData`: `Partial<CallData>`): *`Partial<CallDataRPC>`*

*Defined in [web3-wrapper/src/marshaller.ts:159](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/marshaller.ts#L159)*

Marshall call data

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`callData` | `Partial<CallData>` | call data to marshall |

**Returns:** *`Partial<CallDataRPC>`*

marshalled call data

####  marshalTxData

▸ **marshalTxData**(`txData`: `Partial<TxData>`): *`Partial<TxDataRPC>`*

*Defined in [web3-wrapper/src/marshaller.ts:133](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/marshaller.ts#L133)*

Marshall transaction data

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`txData` | `Partial<TxData>` | transaction data to marshall |

**Returns:** *`Partial<TxDataRPC>`*

marshalled transaction data

####  unmarshalIntoBlockWithTransactionData

▸ **unmarshalIntoBlockWithTransactionData**(`blockWithHexValues`: [BlockWithTransactionDataRPC](#interface-blockwithtransactiondatarpc)): *`BlockWithTransactionData`*

*Defined in [web3-wrapper/src/marshaller.ts:59](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/marshaller.ts#L59)*

Unmarshall block with transaction data

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`blockWithHexValues` | [BlockWithTransactionDataRPC](#interface-blockwithtransactiondatarpc) | block to unmarshall |

**Returns:** *`BlockWithTransactionData`*

unmarshalled block with transaction data

####  unmarshalIntoBlockWithoutTransactionData

▸ **unmarshalIntoBlockWithoutTransactionData**(`blockWithHexValues`: [BlockWithoutTransactionDataRPC](#interface-blockwithouttransactiondatarpc)): *`BlockWithoutTransactionData`*

*Defined in [web3-wrapper/src/marshaller.ts:39](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/marshaller.ts#L39)*

Unmarshall block without transaction data

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`blockWithHexValues` | [BlockWithoutTransactionDataRPC](#interface-blockwithouttransactiondatarpc) | block to unmarshall |

**Returns:** *`BlockWithoutTransactionData`*

unmarshalled block without transaction data

####  unmarshalLog

▸ **unmarshalLog**(`rawLog`: `RawLogEntry`): *`LogEntry`*

*Defined in [web3-wrapper/src/marshaller.ts:199](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/marshaller.ts#L199)*

Unmarshall log

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`rawLog` | `RawLogEntry` | log to unmarshall |

**Returns:** *`LogEntry`*

unmarshalled log

####  unmarshalTransaction

▸ **unmarshalTransaction**(`txRpc`: [TransactionRPC](#interface-transactionrpc)): *`Transaction`*

*Defined in [web3-wrapper/src/marshaller.ts:82](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/marshaller.ts#L82)*

Unmarshall transaction

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`txRpc` | [TransactionRPC](#interface-transactionrpc) | transaction to unmarshall |

**Returns:** *`Transaction`*

unmarshalled transaction

####  unmarshalTransactionReceipt

▸ **unmarshalTransactionReceipt**(`txReceiptRpc`: [TransactionReceiptRPC](#interface-transactionreceiptrpc)): *`TransactionReceipt`*

*Defined in [web3-wrapper/src/marshaller.ts:99](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/marshaller.ts#L99)*

Unmarshall transaction receipt

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`txReceiptRpc` | [TransactionReceiptRPC](#interface-transactionreceiptrpc) | transaction receipt to unmarshall |

**Returns:** *`TransactionReceipt`*

unmarshalled transaction receipt

####  unmarshalTxData

▸ **unmarshalTxData**(`txDataRpc`: [TxDataRPC](#interface-txdatarpc)): *`TxData`*

*Defined in [web3-wrapper/src/marshaller.ts:115](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/marshaller.ts#L115)*

Unmarshall transaction data

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`txDataRpc` | [TxDataRPC](#interface-txdatarpc) | transaction data to unmarshall |

**Returns:** *`TxData`*

unmarshalled transaction data

<hr />




##  Type aliases

####  TransactionReceiptStatusRPC

Ƭ **TransactionReceiptStatusRPC**: *null | string | `0` | `1`*

*Defined in [web3-wrapper/src/types.ts:69](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/web3-wrapper/src/types.ts#L69)*

<hr />



<hr /> 
