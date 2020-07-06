# Class: EmptyWalletSubprovider

This class implements the [web3-provider-engine](https://github.com/MetaMask/provider-engine) subprovider interface.
It intercepts the `eth_accounts` JSON RPC requests and never returns any addresses when queried.


##   Methods

###  emitPayloadAsync

▸ **emitPayloadAsync**(`payload`: `Partial<JSONRPCRequestPayloadWithMethod>`): *`Promise<JSONRPCResponsePayload>`*

*Inherited from [Subprovider](#interface-subprovider).[emitPayloadAsync](#emitpayloadasync)*

*Defined in [subproviders/src/subproviders/subprovider.ts:55](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/subprovider.ts#L55)*

Emits a JSON RPC payload that will then be handled by the ProviderEngine instance
this subprovider is a part of. The payload will cascade down the subprovider middleware
stack until finding the responsible entity for handling the request.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`payload` | `Partial<JSONRPCRequestPayloadWithMethod>` | JSON RPC payload |

**Returns:** *`Promise<JSONRPCResponsePayload>`*

JSON RPC response payload

___

###  handleRequest

▸ **handleRequest**(`payload`: `JSONRPCRequestPayload`, `next`: [Callback](#callback), `end`: [ErrorCallback](#errorcallback)): *`Promise<void>`*

*Overrides [Subprovider](_subproviders_src_subproviders_subprovider_.subprovider.md).[handleRequest](#abstract-handlerequest)*

*Defined in [subproviders/src/subproviders/empty_wallet_subprovider.ts:21](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/empty_wallet_subprovider.ts#L21)*

This method conforms to the web3-provider-engine interface.
It is called internally by the ProviderEngine when it is this subproviders
turn to handle a JSON RPC request.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`payload` | `JSONRPCRequestPayload` | JSON RPC payload |
`next` | [Callback](#callback) | Callback to call if this subprovider decides not to handle the request |
`end` | [ErrorCallback](#errorcallback) | Callback to call if subprovider handled the request and wants to pass back the request.  |

**Returns:** *`Promise<void>`*

___

###  setEngine

▸ **setEngine**(`engine`: `Web3ProviderEngine`): *void*

*Inherited from [Subprovider](#interface-subprovider).[setEngine](#setengine)*

*Defined in [subproviders/src/subproviders/subprovider.ts:68](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/subprovider.ts#L68)*

Set's the subprovider's engine to the ProviderEngine it is added to.
This is only called within the ProviderEngine source code, do not call
directly.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`engine` | `Web3ProviderEngine` | The ProviderEngine this subprovider is added to  |

**Returns:** *void*

<hr />

# Class: FakeGasEstimateSubprovider

This class implements the [web3-provider-engine](https://github.com/MetaMask/provider-engine) subprovider interface.
It intercepts the `eth_estimateGas` JSON RPC call and always returns a constant gas amount when queried.


##   Constructors



\+ **new FakeGasEstimateSubprovider**(`constantGasAmount`: number): *[FakeGasEstimateSubprovider](#class-fakegasestimatesubprovider)*

*Defined in [subproviders/src/subproviders/fake_gas_estimate_subprovider.ts:17](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/fake_gas_estimate_subprovider.ts#L17)*

Instantiates an instance of the FakeGasEstimateSubprovider

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`constantGasAmount` | number | The constant gas amount you want returned  |

**Returns:** *[FakeGasEstimateSubprovider](#class-fakegasestimatesubprovider)*

## Methods

###  emitPayloadAsync

▸ **emitPayloadAsync**(`payload`: `Partial<JSONRPCRequestPayloadWithMethod>`): *`Promise<JSONRPCResponsePayload>`*

*Inherited from [Subprovider](#interface-subprovider).[emitPayloadAsync](#emitpayloadasync)*

*Defined in [subproviders/src/subproviders/subprovider.ts:55](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/subprovider.ts#L55)*

Emits a JSON RPC payload that will then be handled by the ProviderEngine instance
this subprovider is a part of. The payload will cascade down the subprovider middleware
stack until finding the responsible entity for handling the request.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`payload` | `Partial<JSONRPCRequestPayloadWithMethod>` | JSON RPC payload |

**Returns:** *`Promise<JSONRPCResponsePayload>`*

JSON RPC response payload

___

###  handleRequest

▸ **handleRequest**(`payload`: `JSONRPCRequestPayload`, `next`: [Callback](#callback), `end`: [ErrorCallback](#errorcallback)): *`Promise<void>`*

*Overrides [Subprovider](_subproviders_src_subproviders_subprovider_.subprovider.md).[handleRequest](#abstract-handlerequest)*

*Defined in [subproviders/src/subproviders/fake_gas_estimate_subprovider.ts:35](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/fake_gas_estimate_subprovider.ts#L35)*

This method conforms to the web3-provider-engine interface.
It is called internally by the ProviderEngine when it is this subproviders
turn to handle a JSON RPC request.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`payload` | `JSONRPCRequestPayload` | JSON RPC payload |
`next` | [Callback](#callback) | Callback to call if this subprovider decides not to handle the request |
`end` | [ErrorCallback](#errorcallback) | Callback to call if subprovider handled the request and wants to pass back the request.  |

**Returns:** *`Promise<void>`*

___

###  setEngine

▸ **setEngine**(`engine`: `Web3ProviderEngine`): *void*

*Inherited from [Subprovider](#interface-subprovider).[setEngine](#setengine)*

*Defined in [subproviders/src/subproviders/subprovider.ts:68](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/subprovider.ts#L68)*

Set's the subprovider's engine to the ProviderEngine it is added to.
This is only called within the ProviderEngine source code, do not call
directly.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`engine` | `Web3ProviderEngine` | The ProviderEngine this subprovider is added to  |

**Returns:** *void*

<hr />

# Class: GanacheSubprovider

This class implements the [web3-provider-engine](https://github.com/MetaMask/provider-engine) subprovider interface.
It intercepts all JSON RPC requests and relays them to an in-process ganache instance.


##   Constructors



\+ **new GanacheSubprovider**(`opts`: `GanacheOpts`): *[GanacheSubprovider](#class-ganachesubprovider)*

*Defined in [subproviders/src/subproviders/ganache.ts:13](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/ganache.ts#L13)*

Instantiates a GanacheSubprovider

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`opts` | `GanacheOpts` | The desired opts with which to instantiate the Ganache provider  |

**Returns:** *[GanacheSubprovider](#class-ganachesubprovider)*

## Methods

###  emitPayloadAsync

▸ **emitPayloadAsync**(`payload`: `Partial<JSONRPCRequestPayloadWithMethod>`): *`Promise<JSONRPCResponsePayload>`*

*Inherited from [Subprovider](#interface-subprovider).[emitPayloadAsync](#emitpayloadasync)*

*Defined in [subproviders/src/subproviders/subprovider.ts:55](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/subprovider.ts#L55)*

Emits a JSON RPC payload that will then be handled by the ProviderEngine instance
this subprovider is a part of. The payload will cascade down the subprovider middleware
stack until finding the responsible entity for handling the request.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`payload` | `Partial<JSONRPCRequestPayloadWithMethod>` | JSON RPC payload |

**Returns:** *`Promise<JSONRPCResponsePayload>`*

JSON RPC response payload

___

###  handleRequest

▸ **handleRequest**(`payload`: `JSONRPCRequestPayload`, `_next`: [Callback](#callback), `end`: [ErrorCallback](#errorcallback)): *`Promise<void>`*

*Overrides [Subprovider](_subproviders_src_subproviders_subprovider_.subprovider.md).[handleRequest](#abstract-handlerequest)*

*Defined in [subproviders/src/subproviders/ganache.ts:31](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/ganache.ts#L31)*

This method conforms to the web3-provider-engine interface.
It is called internally by the ProviderEngine when it is this subproviders
turn to handle a JSON RPC request.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`payload` | `JSONRPCRequestPayload` | JSON RPC payload |
`_next` | [Callback](#callback) | Callback to call if this subprovider decides not to handle the request |
`end` | [ErrorCallback](#errorcallback) | Callback to call if subprovider handled the request and wants to pass back the request.  |

**Returns:** *`Promise<void>`*

___

###  setEngine

▸ **setEngine**(`engine`: `Web3ProviderEngine`): *void*

*Inherited from [Subprovider](#interface-subprovider).[setEngine](#setengine)*

*Defined in [subproviders/src/subproviders/subprovider.ts:68](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/subprovider.ts#L68)*

Set's the subprovider's engine to the ProviderEngine it is added to.
This is only called within the ProviderEngine source code, do not call
directly.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`engine` | `Web3ProviderEngine` | The ProviderEngine this subprovider is added to  |

**Returns:** *void*

<hr />

# Class: LedgerSubprovider

Subprovider for interfacing with a user's [Ledger Nano S](https://www.ledgerwallet.com/products/ledger-nano-s).
This subprovider intercepts all account related RPC requests (e.g message/transaction signing, etc...) and
re-routes them to a Ledger device plugged into the users computer.


##   Constructors



\+ **new LedgerSubprovider**(`config`: [LedgerSubproviderConfigs](#interface-ledgersubproviderconfigs)): *[LedgerSubprovider](#class-ledgersubprovider)*

*Defined in [subproviders/src/subproviders/ledger.ts:41](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/ledger.ts#L41)*

Instantiates a LedgerSubprovider. Defaults to derivationPath set to `44'/60'/0'`.
TestRPC/Ganache defaults to `m/44'/60'/0'/0`, so set this in the configs if desired.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`config` | [LedgerSubproviderConfigs](#interface-ledgersubproviderconfigs) | Several available configurations |

**Returns:** *[LedgerSubprovider](#class-ledgersubprovider)*

LedgerSubprovider instance

## Methods

###  emitPayloadAsync

▸ **emitPayloadAsync**(`payload`: `Partial<JSONRPCRequestPayloadWithMethod>`): *`Promise<JSONRPCResponsePayload>`*

*Inherited from [Subprovider](#interface-subprovider).[emitPayloadAsync](#emitpayloadasync)*

*Defined in [subproviders/src/subproviders/subprovider.ts:55](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/subprovider.ts#L55)*

Emits a JSON RPC payload that will then be handled by the ProviderEngine instance
this subprovider is a part of. The payload will cascade down the subprovider middleware
stack until finding the responsible entity for handling the request.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`payload` | `Partial<JSONRPCRequestPayloadWithMethod>` | JSON RPC payload |

**Returns:** *`Promise<JSONRPCResponsePayload>`*

JSON RPC response payload

___

###  getAccountsAsync

▸ **getAccountsAsync**(`numberOfAccounts`: number): *`Promise<string[]>`*

*Overrides void*

*Defined in [subproviders/src/subproviders/ledger.ts:87](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/ledger.ts#L87)*

Retrieve a users Ledger accounts. The accounts are derived from the derivationPath,
master public key and chain code. Because of this, you can request as many accounts
as you wish and it only requires a single request to the Ledger device. This method
is automatically called when issuing a `eth_accounts` JSON RPC request via your providerEngine
instance.

**Parameters:**

Name | Type | Default | Description |
------ | ------ | ------ | ------ |
`numberOfAccounts` | number |  DEFAULT_NUM_ADDRESSES_TO_FETCH | Number of accounts to retrieve (default: 10) |

**Returns:** *`Promise<string[]>`*

An array of accounts

___

###  getPath

▸ **getPath**(): *string*

*Defined in [subproviders/src/subproviders/ledger.ts:68](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/ledger.ts#L68)*

Retrieve the set derivation path

**Returns:** *string*

derivation path

___

###  handleRequest

▸ **handleRequest**(`payload`: `JSONRPCRequestPayload`, `next`: [Callback](#callback), `end`: [ErrorCallback](#errorcallback)): *`Promise<void>`*



*Overrides [Subprovider](_subproviders_src_subproviders_subprovider_.subprovider.md).[handleRequest](#abstract-handlerequest)*

*Defined in [subproviders/src/subproviders/base_wallet_subprovider.ts:37](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/base_wallet_subprovider.ts#L37)*

This method conforms to the web3-provider-engine interface.
It is called internally by the ProviderEngine when it is this subproviders
turn to handle a JSON RPC request.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`payload` | `JSONRPCRequestPayload` | JSON RPC payload |
`next` | [Callback](#callback) | Callback to call if this subprovider decides not to handle the request |
`end` | [ErrorCallback](#errorcallback) | Callback to call if subprovider handled the request and wants to pass back the request.  |

**Returns:** *`Promise<void>`*

___

###  setEngine

▸ **setEngine**(`engine`: `Web3ProviderEngine`): *void*

*Inherited from [Subprovider](#interface-subprovider).[setEngine](#setengine)*

*Defined in [subproviders/src/subproviders/subprovider.ts:68](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/subprovider.ts#L68)*

Set's the subprovider's engine to the ProviderEngine it is added to.
This is only called within the ProviderEngine source code, do not call
directly.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`engine` | `Web3ProviderEngine` | The ProviderEngine this subprovider is added to  |

**Returns:** *void*

___

###  setPath

▸ **setPath**(`basDerivationPath`: string): *void*

*Defined in [subproviders/src/subproviders/ledger.ts:75](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/ledger.ts#L75)*

Set a desired derivation path when computing the available user addresses

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`basDerivationPath` | string | The desired derivation path (e.g `44'/60'/0'`)  |

**Returns:** *void*

___

###  signPersonalMessageAsync

▸ **signPersonalMessageAsync**(`data`: string, `address`: string): *`Promise<string>`*

*Overrides void*

*Defined in [subproviders/src/subproviders/ledger.ts:158](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/ledger.ts#L158)*

Sign a personal Ethereum signed message. The signing account will be the account
associated with the provided address.
The Ledger adds the Ethereum signed message prefix on-device.  If you've added
the LedgerSubprovider to your app's provider, you can simply send an `eth_sign`
or `personal_sign` JSON RPC request, and this method will be called auto-magically.
If you are not using this via a ProviderEngine instance, you can call it directly.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`data` | string | Hex string message to sign |
`address` | string | Address of the account to sign with |

**Returns:** *`Promise<string>`*

Signature hex string (order: rsv)

___

###  signTransactionAsync

▸ **signTransactionAsync**(`txParams`: [PartialTxParams](#interface-partialtxparams)): *`Promise<string>`*

*Overrides void*

*Defined in [subproviders/src/subproviders/ledger.ts:101](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/ledger.ts#L101)*

Signs a transaction on the Ledger with the account specificed by the `from` field in txParams.
If you've added the LedgerSubprovider to your app's provider, you can simply send an `eth_sendTransaction`
JSON RPC request, and this method will be called auto-magically. If you are not using this via a ProviderEngine
instance, you can call it directly.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`txParams` | [PartialTxParams](#interface-partialtxparams) | Parameters of the transaction to sign |

**Returns:** *`Promise<string>`*

Signed transaction hex string

___

###  signTypedDataAsync

▸ **signTypedDataAsync**(`address`: string, `typedData`: any): *`Promise<string>`*

*Overrides void*

*Defined in [subproviders/src/subproviders/ledger.ts:196](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/ledger.ts#L196)*

eth_signTypedData is currently not supported on Ledger devices.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`address` | string | Address of the account to sign with |
`typedData` | any | - |

**Returns:** *`Promise<string>`*

Signature hex string (order: rsv)

<hr />

# Class: MetamaskSubprovider

This class implements the [web3-provider-engine](https://github.com/MetaMask/provider-engine)
subprovider interface and the provider sendAsync interface.
It handles inconsistencies with Metamask implementations of various JSON RPC methods.
It forwards JSON RPC requests involving the domain of a signer (getAccounts,
sendTransaction, signMessage etc...) to the provider instance supplied at instantiation. All other requests
are passed onwards for subsequent subproviders to handle.


##   Constructors



\+ **new MetamaskSubprovider**(`supportedProvider`: [SupportedProvider](#supportedprovider)): *[MetamaskSubprovider](#class-metamasksubprovider)*

*Defined in [subproviders/src/subproviders/metamask_subprovider.ts:19](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/metamask_subprovider.ts#L19)*

Instantiates a new MetamaskSubprovider

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`supportedProvider` | [SupportedProvider](#supportedprovider) | Web3 provider that should handle  all user account related requests  |

**Returns:** *[MetamaskSubprovider](#class-metamasksubprovider)*

## Methods

###  emitPayloadAsync

▸ **emitPayloadAsync**(`payload`: `Partial<JSONRPCRequestPayloadWithMethod>`): *`Promise<JSONRPCResponsePayload>`*

*Inherited from [Subprovider](#interface-subprovider).[emitPayloadAsync](#emitpayloadasync)*

*Defined in [subproviders/src/subproviders/subprovider.ts:55](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/subprovider.ts#L55)*

Emits a JSON RPC payload that will then be handled by the ProviderEngine instance
this subprovider is a part of. The payload will cascade down the subprovider middleware
stack until finding the responsible entity for handling the request.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`payload` | `Partial<JSONRPCRequestPayloadWithMethod>` | JSON RPC payload |

**Returns:** *`Promise<JSONRPCResponsePayload>`*

JSON RPC response payload

___

###  handleRequest

▸ **handleRequest**(`payload`: `JSONRPCRequestPayload`, `next`: [Callback](#callback), `end`: [ErrorCallback](#errorcallback)): *`Promise<void>`*

*Overrides [Subprovider](_subproviders_src_subproviders_subprovider_.subprovider.md).[handleRequest](#abstract-handlerequest)*

*Defined in [subproviders/src/subproviders/metamask_subprovider.ts:39](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/metamask_subprovider.ts#L39)*

This method conforms to the web3-provider-engine interface.
It is called internally by the ProviderEngine when it is this subproviders
turn to handle a JSON RPC request.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`payload` | `JSONRPCRequestPayload` | JSON RPC payload |
`next` | [Callback](#callback) | Callback to call if this subprovider decides not to handle the request |
`end` | [ErrorCallback](#errorcallback) | Callback to call if subprovider handled the request and wants to pass back the request.  |

**Returns:** *`Promise<void>`*

___

###  sendAsync

▸ **sendAsync**(`payload`: `JSONRPCRequestPayload`, `callback`: [ErrorCallback](#errorcallback)): *void*

*Defined in [subproviders/src/subproviders/metamask_subprovider.ts:117](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/metamask_subprovider.ts#L117)*

This method conforms to the provider sendAsync interface.
Allowing the MetamaskSubprovider to be used as a generic provider (outside of Web3ProviderEngine) with the
addition of wrapping the inconsistent Metamask behaviour

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`payload` | `JSONRPCRequestPayload` | JSON RPC payload |
`callback` | [ErrorCallback](#errorcallback) | - |

**Returns:** *void*

The contents nested under the result key of the response body

___

###  setEngine

▸ **setEngine**(`engine`: `Web3ProviderEngine`): *void*

*Inherited from [Subprovider](#interface-subprovider).[setEngine](#setengine)*

*Defined in [subproviders/src/subproviders/subprovider.ts:68](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/subprovider.ts#L68)*

Set's the subprovider's engine to the ProviderEngine it is added to.
This is only called within the ProviderEngine source code, do not call
directly.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`engine` | `Web3ProviderEngine` | The ProviderEngine this subprovider is added to  |

**Returns:** *void*

<hr />

# Class: MnemonicWalletSubprovider

This class implements the [web3-provider-engine](https://github.com/MetaMask/provider-engine) subprovider interface.
This subprovider intercepts all account related RPC requests (e.g message/transaction signing, etc...) and handles
all requests with accounts derived from the supplied mnemonic.


##   Constructors



\+ **new MnemonicWalletSubprovider**(`config`: [MnemonicWalletSubproviderConfigs](#interface-mnemonicwalletsubproviderconfigs)): *[MnemonicWalletSubprovider](#class-mnemonicwalletsubprovider)*

*Defined in [subproviders/src/subproviders/mnemonic_wallet.ts:27](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/mnemonic_wallet.ts#L27)*

Instantiates a MnemonicWalletSubprovider. Defaults to baseDerivationPath set to `44'/60'/0'/0`.
This is the default in TestRPC/Ganache, it can be overridden if desired.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`config` | [MnemonicWalletSubproviderConfigs](#interface-mnemonicwalletsubproviderconfigs) | Configuration for the mnemonic wallet, must contain the mnemonic |

**Returns:** *[MnemonicWalletSubprovider](#class-mnemonicwalletsubprovider)*

MnemonicWalletSubprovider instance

## Methods

###  emitPayloadAsync

▸ **emitPayloadAsync**(`payload`: `Partial<JSONRPCRequestPayloadWithMethod>`): *`Promise<JSONRPCResponsePayload>`*

*Inherited from [Subprovider](#interface-subprovider).[emitPayloadAsync](#emitpayloadasync)*

*Defined in [subproviders/src/subproviders/subprovider.ts:55](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/subprovider.ts#L55)*

Emits a JSON RPC payload that will then be handled by the ProviderEngine instance
this subprovider is a part of. The payload will cascade down the subprovider middleware
stack until finding the responsible entity for handling the request.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`payload` | `Partial<JSONRPCRequestPayloadWithMethod>` | JSON RPC payload |

**Returns:** *`Promise<JSONRPCResponsePayload>`*

JSON RPC response payload

___

###  getAccountsAsync

▸ **getAccountsAsync**(`numberOfAccounts`: number): *`Promise<string[]>`*

*Overrides void*

*Defined in [subproviders/src/subproviders/mnemonic_wallet.ts:70](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/mnemonic_wallet.ts#L70)*

Retrieve the accounts associated with the mnemonic.
This method is implicitly called when issuing a `eth_accounts` JSON RPC request
via your providerEngine instance.

**Parameters:**

Name | Type | Default | Description |
------ | ------ | ------ | ------ |
`numberOfAccounts` | number |  DEFAULT_NUM_ADDRESSES_TO_FETCH | Number of accounts to retrieve (default: 10) |

**Returns:** *`Promise<string[]>`*

An array of accounts

___

###  getPath

▸ **getPath**(): *string*

*Defined in [subproviders/src/subproviders/mnemonic_wallet.ts:52](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/mnemonic_wallet.ts#L52)*

Retrieve the set derivation path

**Returns:** *string*

derivation path

___

###  handleRequest

▸ **handleRequest**(`payload`: `JSONRPCRequestPayload`, `next`: [Callback](#callback), `end`: [ErrorCallback](#errorcallback)): *`Promise<void>`*



*Overrides [Subprovider](_subproviders_src_subproviders_subprovider_.subprovider.md).[handleRequest](#abstract-handlerequest)*

*Defined in [subproviders/src/subproviders/base_wallet_subprovider.ts:37](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/base_wallet_subprovider.ts#L37)*

This method conforms to the web3-provider-engine interface.
It is called internally by the ProviderEngine when it is this subproviders
turn to handle a JSON RPC request.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`payload` | `JSONRPCRequestPayload` | JSON RPC payload |
`next` | [Callback](#callback) | Callback to call if this subprovider decides not to handle the request |
`end` | [ErrorCallback](#errorcallback) | Callback to call if subprovider handled the request and wants to pass back the request.  |

**Returns:** *`Promise<void>`*

___

###  setEngine

▸ **setEngine**(`engine`: `Web3ProviderEngine`): *void*

*Inherited from [Subprovider](#interface-subprovider).[setEngine](#setengine)*

*Defined in [subproviders/src/subproviders/subprovider.ts:68](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/subprovider.ts#L68)*

Set's the subprovider's engine to the ProviderEngine it is added to.
This is only called within the ProviderEngine source code, do not call
directly.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`engine` | `Web3ProviderEngine` | The ProviderEngine this subprovider is added to  |

**Returns:** *void*

___

###  setPath

▸ **setPath**(`baseDerivationPath`: string): *void*

*Defined in [subproviders/src/subproviders/mnemonic_wallet.ts:59](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/mnemonic_wallet.ts#L59)*

Set a desired derivation path when computing the available user addresses

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`baseDerivationPath` | string | The desired derivation path (e.g `44'/60'/0'`)  |

**Returns:** *void*

___

###  signPersonalMessageAsync

▸ **signPersonalMessageAsync**(`data`: string, `address`: string): *`Promise<string>`*

*Overrides void*

*Defined in [subproviders/src/subproviders/mnemonic_wallet.ts:102](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/mnemonic_wallet.ts#L102)*

Sign a personal Ethereum signed message. The signing account will be the account
associated with the provided address. If you've added the MnemonicWalletSubprovider to
your app's provider, you can simply send an `eth_sign` or `personal_sign` JSON RPC request,
and this method will be called auto-magically. If you are not using this via a ProviderEngine
instance, you can call it directly.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`data` | string | Hex string message to sign |
`address` | string | Address of the account to sign with |

**Returns:** *`Promise<string>`*

Signature hex string (order: rsv)

___

###  signTransactionAsync

▸ **signTransactionAsync**(`txParams`: [PartialTxParams](#interface-partialtxparams)): *`Promise<string>`*

*Overrides void*

*Defined in [subproviders/src/subproviders/mnemonic_wallet.ts:84](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/mnemonic_wallet.ts#L84)*

Signs a transaction with the account specificed by the `from` field in txParams.
If you've added this Subprovider to your  app's provider, you can simply send
an `eth_sendTransaction` JSON RPC request, and this method will be called auto-magically.
If you are not using this via a ProviderEngine instance, you can call it directly.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`txParams` | [PartialTxParams](#interface-partialtxparams) | Parameters of the transaction to sign |

**Returns:** *`Promise<string>`*

Signed transaction hex string

___

###  signTypedDataAsync

▸ **signTypedDataAsync**(`address`: string, `typedData`: `EIP712TypedData`): *`Promise<string>`*

*Overrides void*

*Defined in [subproviders/src/subproviders/mnemonic_wallet.ts:122](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/mnemonic_wallet.ts#L122)*

Sign an EIP712 Typed Data message. The signing account will be the account
associated with the provided address. If you've added this MnemonicWalletSubprovider to
your app's provider, you can simply send an `eth_signTypedData` JSON RPC request, and
this method will be called auto-magically. If you are not using this via a ProviderEngine
 instance, you can call it directly.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`address` | string | Address of the account to sign with |
`typedData` | `EIP712TypedData` | - |

**Returns:** *`Promise<string>`*

Signature hex string (order: rsv)

<hr />

# Class: NonceTrackerSubprovider

This class implements the [web3-provider-engine](https://github.com/MetaMask/provider-engine) subprovider interface.
It is heavily inspired by the [NonceSubprovider](https://github.com/MetaMask/provider-engine/blob/master/subproviders/nonce-tracker.js).
We added the additional feature of clearing the cached nonce value when a `nonce value too low` error occurs.


##   Methods

###  emitPayloadAsync

▸ **emitPayloadAsync**(`payload`: `Partial<JSONRPCRequestPayloadWithMethod>`): *`Promise<JSONRPCResponsePayload>`*

*Inherited from [Subprovider](#interface-subprovider).[emitPayloadAsync](#emitpayloadasync)*

*Defined in [subproviders/src/subproviders/subprovider.ts:55](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/subprovider.ts#L55)*

Emits a JSON RPC payload that will then be handled by the ProviderEngine instance
this subprovider is a part of. The payload will cascade down the subprovider middleware
stack until finding the responsible entity for handling the request.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`payload` | `Partial<JSONRPCRequestPayloadWithMethod>` | JSON RPC payload |

**Returns:** *`Promise<JSONRPCResponsePayload>`*

JSON RPC response payload

___

###  handleRequest

▸ **handleRequest**(`payload`: `JSONRPCRequestPayload`, `next`: [NextCallback](#nextcallback), `end`: [ErrorCallback](#errorcallback)): *`Promise<void>`*

*Overrides [Subprovider](_subproviders_src_subproviders_subprovider_.subprovider.md).[handleRequest](#abstract-handlerequest)*

*Defined in [subproviders/src/subproviders/nonce_tracker.ts:57](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/nonce_tracker.ts#L57)*

This method conforms to the web3-provider-engine interface.
It is called internally by the ProviderEngine when it is this subproviders
turn to handle a JSON RPC request.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`payload` | `JSONRPCRequestPayload` | JSON RPC payload |
`next` | [NextCallback](#nextcallback) | Callback to call if this subprovider decides not to handle the request |
`end` | [ErrorCallback](#errorcallback) | Callback to call if subprovider handled the request and wants to pass back the request.  |

**Returns:** *`Promise<void>`*

___

###  setEngine

▸ **setEngine**(`engine`: `Web3ProviderEngine`): *void*

*Inherited from [Subprovider](#interface-subprovider).[setEngine](#setengine)*

*Defined in [subproviders/src/subproviders/subprovider.ts:68](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/subprovider.ts#L68)*

Set's the subprovider's engine to the ProviderEngine it is added to.
This is only called within the ProviderEngine source code, do not call
directly.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`engine` | `Web3ProviderEngine` | The ProviderEngine this subprovider is added to  |

**Returns:** *void*

<hr />

# Class: PrivateKeyWalletSubprovider

This class implements the [web3-provider-engine](https://github.com/MetaMask/provider-engine) subprovider interface.
This subprovider intercepts all account related RPC requests (e.g message/transaction signing, etc...) and handles
all requests with the supplied Ethereum private key.


##   Constructors



\+ **new PrivateKeyWalletSubprovider**(`privateKey`: string): *[PrivateKeyWalletSubprovider](#class-privatekeywalletsubprovider)*

*Defined in [subproviders/src/subproviders/private_key_wallet.ts:19](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/private_key_wallet.ts#L19)*

Instantiates a PrivateKeyWalletSubprovider.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`privateKey` | string | The corresponding private key to an Ethereum address |

**Returns:** *[PrivateKeyWalletSubprovider](#class-privatekeywalletsubprovider)*

PrivateKeyWalletSubprovider instance

## Methods

###  emitPayloadAsync

▸ **emitPayloadAsync**(`payload`: `Partial<JSONRPCRequestPayloadWithMethod>`): *`Promise<JSONRPCResponsePayload>`*

*Inherited from [Subprovider](#interface-subprovider).[emitPayloadAsync](#emitpayloadasync)*

*Defined in [subproviders/src/subproviders/subprovider.ts:55](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/subprovider.ts#L55)*

Emits a JSON RPC payload that will then be handled by the ProviderEngine instance
this subprovider is a part of. The payload will cascade down the subprovider middleware
stack until finding the responsible entity for handling the request.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`payload` | `Partial<JSONRPCRequestPayloadWithMethod>` | JSON RPC payload |

**Returns:** *`Promise<JSONRPCResponsePayload>`*

JSON RPC response payload

___

###  getAccountsAsync

▸ **getAccountsAsync**(): *`Promise<string[]>`*

*Overrides void*

*Defined in [subproviders/src/subproviders/private_key_wallet.ts:37](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/private_key_wallet.ts#L37)*

Retrieve the account associated with the supplied private key.
This method is implicitly called when issuing a `eth_accounts` JSON RPC request
via your providerEngine instance.

**Returns:** *`Promise<string[]>`*

An array of accounts

___

###  handleRequest

▸ **handleRequest**(`payload`: `JSONRPCRequestPayload`, `next`: [Callback](#callback), `end`: [ErrorCallback](#errorcallback)): *`Promise<void>`*



*Overrides [Subprovider](_subproviders_src_subproviders_subprovider_.subprovider.md).[handleRequest](#abstract-handlerequest)*

*Defined in [subproviders/src/subproviders/base_wallet_subprovider.ts:37](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/base_wallet_subprovider.ts#L37)*

This method conforms to the web3-provider-engine interface.
It is called internally by the ProviderEngine when it is this subproviders
turn to handle a JSON RPC request.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`payload` | `JSONRPCRequestPayload` | JSON RPC payload |
`next` | [Callback](#callback) | Callback to call if this subprovider decides not to handle the request |
`end` | [ErrorCallback](#errorcallback) | Callback to call if subprovider handled the request and wants to pass back the request.  |

**Returns:** *`Promise<void>`*

___

###  setEngine

▸ **setEngine**(`engine`: `Web3ProviderEngine`): *void*

*Inherited from [Subprovider](#interface-subprovider).[setEngine](#setengine)*

*Defined in [subproviders/src/subproviders/subprovider.ts:68](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/subprovider.ts#L68)*

Set's the subprovider's engine to the ProviderEngine it is added to.
This is only called within the ProviderEngine source code, do not call
directly.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`engine` | `Web3ProviderEngine` | The ProviderEngine this subprovider is added to  |

**Returns:** *void*

___

###  signPersonalMessageAsync

▸ **signPersonalMessageAsync**(`data`: string, `address`: string): *`Promise<string>`*

*Overrides void*

*Defined in [subproviders/src/subproviders/private_key_wallet.ts:72](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/private_key_wallet.ts#L72)*

Sign a personal Ethereum signed message. The signing address will be calculated from the private key.
The address must be provided it must match the address calculated from the private key.
If you've added this Subprovider to your app's provider, you can simply send an `eth_sign`
or `personal_sign` JSON RPC request, and this method will be called auto-magically.
If you are not using this via a ProviderEngine instance, you can call it directly.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`data` | string | Hex string message to sign |
`address` | string | Address of the account to sign with |

**Returns:** *`Promise<string>`*

Signature hex string (order: rsv)

___

###  signTransactionAsync

▸ **signTransactionAsync**(`txParams`: [PartialTxParams](#interface-partialtxparams)): *`Promise<string>`*

*Overrides void*

*Defined in [subproviders/src/subproviders/private_key_wallet.ts:48](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/private_key_wallet.ts#L48)*

Sign a transaction with the private key. If you've added this Subprovider to your
app's provider, you can simply send an `eth_sendTransaction` JSON RPC request, and
this method will be called auto-magically. If you are not using this via a ProviderEngine
instance, you can call it directly.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`txParams` | [PartialTxParams](#interface-partialtxparams) | Parameters of the transaction to sign |

**Returns:** *`Promise<string>`*

Signed transaction hex string

___

###  signTypedDataAsync

▸ **signTypedDataAsync**(`address`: string, `typedData`: `EIP712TypedData`): *`Promise<string>`*

*Overrides void*

*Defined in [subproviders/src/subproviders/private_key_wallet.ts:99](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/private_key_wallet.ts#L99)*

Sign an EIP712 Typed Data message. The signing address will be calculated from the private key.
The address must be provided it must match the address calculated from the private key.
If you've added this Subprovider to your app's provider, you can simply send an `eth_signTypedData`
JSON RPC request, and this method will be called auto-magically.
If you are not using this via a ProviderEngine instance, you can call it directly.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`address` | string | Address of the account to sign with |
`typedData` | `EIP712TypedData` | - |

**Returns:** *`Promise<string>`*

Signature hex string (order: rsv)

<hr />

# Class: RedundantSubprovider

This class implements the [web3-provider-engine](https://github.com/MetaMask/provider-engine) subprovider interface.
It attempts to handle each JSON RPC request by sequentially attempting to receive a valid response from one of a
set of JSON RPC endpoints.


##   Constructors



\+ **new RedundantSubprovider**(`subproviders`: [Subprovider](_subproviders_src_subproviders_subprovider_.subprovider.md)[]): *[RedundantSubprovider](#class-redundantsubprovider)*

*Defined in [subproviders/src/subproviders/redundant_subprovider.ts:33](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/redundant_subprovider.ts#L33)*

Instantiates a new RedundantSubprovider

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`subproviders` | [Subprovider](#class-subprovider)[] | Subproviders to attempt the request with  |

**Returns:** *[RedundantSubprovider](#class-redundantsubprovider)*

## Methods

###  emitPayloadAsync

▸ **emitPayloadAsync**(`payload`: `Partial<JSONRPCRequestPayloadWithMethod>`): *`Promise<JSONRPCResponsePayload>`*

*Inherited from [Subprovider](#interface-subprovider).[emitPayloadAsync](#emitpayloadasync)*

*Defined in [subproviders/src/subproviders/subprovider.ts:55](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/subprovider.ts#L55)*

Emits a JSON RPC payload that will then be handled by the ProviderEngine instance
this subprovider is a part of. The payload will cascade down the subprovider middleware
stack until finding the responsible entity for handling the request.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`payload` | `Partial<JSONRPCRequestPayloadWithMethod>` | JSON RPC payload |

**Returns:** *`Promise<JSONRPCResponsePayload>`*

JSON RPC response payload

___

###  handleRequest

▸ **handleRequest**(`payload`: `JSONRPCRequestPayload`, `next`: [Callback](#callback), `end`: function): *`Promise<void>`*

*Overrides [Subprovider](_subproviders_src_subproviders_subprovider_.subprovider.md).[handleRequest](#abstract-handlerequest)*

*Defined in [subproviders/src/subproviders/redundant_subprovider.ts:51](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/redundant_subprovider.ts#L51)*

This method conforms to the web3-provider-engine interface.
It is called internally by the ProviderEngine when it is this subproviders
turn to handle a JSON RPC request.

**Parameters:**

▪ **payload**: *`JSONRPCRequestPayload`*

JSON RPC payload

▪ **next**: *[Callback](#callback)*

Callback to call if this subprovider decides not to handle the request

▪ **end**: *function*

Callback to call if subprovider handled the request and wants to pass back the request.

▸ (`err`: `Error` | null, `data?`: any): *void*

**Parameters:**

Name | Type |
------ | ------ |
`err` | `Error` \| null |
`data?` | any |

**Returns:** *`Promise<void>`*

___

###  setEngine

▸ **setEngine**(`engine`: `Web3ProviderEngine`): *void*

*Inherited from [Subprovider](#interface-subprovider).[setEngine](#setengine)*

*Defined in [subproviders/src/subproviders/subprovider.ts:68](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/subprovider.ts#L68)*

Set's the subprovider's engine to the ProviderEngine it is added to.
This is only called within the ProviderEngine source code, do not call
directly.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`engine` | `Web3ProviderEngine` | The ProviderEngine this subprovider is added to  |

**Returns:** *void*

<hr />

# Class: RPCSubprovider

This class implements the [web3-provider-engine](https://github.com/MetaMask/provider-engine) subprovider interface.
It forwards on JSON RPC requests to the supplied `rpcUrl` endpoint


##   Constructors



\+ **new RPCSubprovider**(`rpcUrl`: string, `requestTimeoutMs`: number): *[RPCSubprovider](#class-rpcsubprovider)*

*Defined in [subproviders/src/subproviders/rpc_subprovider.ts:17](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/rpc_subprovider.ts#L17)*

**Parameters:**

Name | Type | Default | Description |
------ | ------ | ------ | ------ |
`rpcUrl` | string | - | URL to the backing Ethereum node to which JSON RPC requests should be sent |
`requestTimeoutMs` | number | 20000 | Amount of miliseconds to wait before timing out the JSON RPC request  |

**Returns:** *[RPCSubprovider](#class-rpcsubprovider)*

## Methods

###  emitPayloadAsync

▸ **emitPayloadAsync**(`payload`: `Partial<JSONRPCRequestPayloadWithMethod>`): *`Promise<JSONRPCResponsePayload>`*

*Inherited from [Subprovider](#interface-subprovider).[emitPayloadAsync](#emitpayloadasync)*

*Defined in [subproviders/src/subproviders/subprovider.ts:55](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/subprovider.ts#L55)*

Emits a JSON RPC payload that will then be handled by the ProviderEngine instance
this subprovider is a part of. The payload will cascade down the subprovider middleware
stack until finding the responsible entity for handling the request.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`payload` | `Partial<JSONRPCRequestPayloadWithMethod>` | JSON RPC payload |

**Returns:** *`Promise<JSONRPCResponsePayload>`*

JSON RPC response payload

___

###  handleRequest

▸ **handleRequest**(`payload`: `JSONRPCRequestPayload`, `_next`: [Callback](#callback), `end`: [ErrorCallback](#errorcallback)): *`Promise<void>`*

*Overrides [Subprovider](_subproviders_src_subproviders_subprovider_.subprovider.md).[handleRequest](#abstract-handlerequest)*

*Defined in [subproviders/src/subproviders/rpc_subprovider.ts:38](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/rpc_subprovider.ts#L38)*

This method conforms to the web3-provider-engine interface.
It is called internally by the ProviderEngine when it is this subproviders
turn to handle a JSON RPC request.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`payload` | `JSONRPCRequestPayload` | JSON RPC payload |
`_next` | [Callback](#callback) | Callback to call if this subprovider decides not to handle the request |
`end` | [ErrorCallback](#errorcallback) | Callback to call if subprovider handled the request and wants to pass back the request.  |

**Returns:** *`Promise<void>`*

___

###  setEngine

▸ **setEngine**(`engine`: `Web3ProviderEngine`): *void*

*Inherited from [Subprovider](#interface-subprovider).[setEngine](#setengine)*

*Defined in [subproviders/src/subproviders/subprovider.ts:68](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/subprovider.ts#L68)*

Set's the subprovider's engine to the ProviderEngine it is added to.
This is only called within the ProviderEngine source code, do not call
directly.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`engine` | `Web3ProviderEngine` | The ProviderEngine this subprovider is added to  |

**Returns:** *void*

<hr />

# Class: SignerSubprovider

This class implements the [web3-provider-engine](https://github.com/MetaMask/provider-engine)
subprovider interface. It forwards JSON RPC requests involving the domain of a signer (getAccounts,
sendTransaction, signMessage etc...) to the provider instance supplied at instantiation. All other requests
are passed onwards for subsequent subproviders to handle.


##   Constructors



\+ **new SignerSubprovider**(`supportedProvider`: [SupportedProvider](#supportedprovider)): *[SignerSubprovider](#class-signersubprovider)*

*Defined in [subproviders/src/subproviders/signer.ts:15](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/signer.ts#L15)*

Instantiates a new SignerSubprovider.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`supportedProvider` | [SupportedProvider](#supportedprovider) | Web3 provider that should handle  all user account related requests  |

**Returns:** *[SignerSubprovider](#class-signersubprovider)*

## Methods

###  emitPayloadAsync

▸ **emitPayloadAsync**(`payload`: `Partial<JSONRPCRequestPayloadWithMethod>`): *`Promise<JSONRPCResponsePayload>`*

*Inherited from [Subprovider](#interface-subprovider).[emitPayloadAsync](#emitpayloadasync)*

*Defined in [subproviders/src/subproviders/subprovider.ts:55](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/subprovider.ts#L55)*

Emits a JSON RPC payload that will then be handled by the ProviderEngine instance
this subprovider is a part of. The payload will cascade down the subprovider middleware
stack until finding the responsible entity for handling the request.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`payload` | `Partial<JSONRPCRequestPayloadWithMethod>` | JSON RPC payload |

**Returns:** *`Promise<JSONRPCResponsePayload>`*

JSON RPC response payload

___

###  handleRequest

▸ **handleRequest**(`payload`: `JSONRPCRequestPayload`, `next`: [Callback](#callback), `end`: [ErrorCallback](#errorcallback)): *`Promise<void>`*

*Overrides [Subprovider](_subproviders_src_subproviders_subprovider_.subprovider.md).[handleRequest](#abstract-handlerequest)*

*Defined in [subproviders/src/subproviders/signer.ts:33](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/signer.ts#L33)*

This method conforms to the web3-provider-engine interface.
It is called internally by the ProviderEngine when it is this subproviders
turn to handle a JSON RPC request.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`payload` | `JSONRPCRequestPayload` | JSON RPC payload |
`next` | [Callback](#callback) | Callback to call if this subprovider decides not to handle the request |
`end` | [ErrorCallback](#errorcallback) | Callback to call if subprovider handled the request and wants to pass back the request.  |

**Returns:** *`Promise<void>`*

___

###  setEngine

▸ **setEngine**(`engine`: `Web3ProviderEngine`): *void*

*Inherited from [Subprovider](#interface-subprovider).[setEngine](#setengine)*

*Defined in [subproviders/src/subproviders/subprovider.ts:68](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/subprovider.ts#L68)*

Set's the subprovider's engine to the ProviderEngine it is added to.
This is only called within the ProviderEngine source code, do not call
directly.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`engine` | `Web3ProviderEngine` | The ProviderEngine this subprovider is added to  |

**Returns:** *void*

<hr />

# Class: Subprovider

A altered version of the base class Subprovider found in [web3-provider-engine](https://github.com/MetaMask/provider-engine).
This one has an async/await `emitPayloadAsync` and also defined types.


##   Methods

###  emitPayloadAsync

▸ **emitPayloadAsync**(`payload`: `Partial<JSONRPCRequestPayloadWithMethod>`): *`Promise<JSONRPCResponsePayload>`*

*Defined in [subproviders/src/subproviders/subprovider.ts:55](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/subprovider.ts#L55)*

Emits a JSON RPC payload that will then be handled by the ProviderEngine instance
this subprovider is a part of. The payload will cascade down the subprovider middleware
stack until finding the responsible entity for handling the request.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`payload` | `Partial<JSONRPCRequestPayloadWithMethod>` | JSON RPC payload |

**Returns:** *`Promise<JSONRPCResponsePayload>`*

JSON RPC response payload

___

### `Abstract` handleRequest

▸ **handleRequest**(`payload`: `JSONRPCRequestPayload`, `next`: [Callback](#callback), `end`: [ErrorCallback](#errorcallback)): *`Promise<void>`*

*Defined in [subproviders/src/subproviders/subprovider.ts:42](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/subprovider.ts#L42)*

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`payload` | `JSONRPCRequestPayload` | JSON RPC request payload |
`next` | [Callback](#callback) | A callback to pass the request to the next subprovider in the stack |
`end` | [ErrorCallback](#errorcallback) | A callback called once the subprovider is done handling the request  |

**Returns:** *`Promise<void>`*

___

###  setEngine

▸ **setEngine**(`engine`: `Web3ProviderEngine`): *void*

*Defined in [subproviders/src/subproviders/subprovider.ts:68](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/subprovider.ts#L68)*

Set's the subprovider's engine to the ProviderEngine it is added to.
This is only called within the ProviderEngine source code, do not call
directly.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`engine` | `Web3ProviderEngine` | The ProviderEngine this subprovider is added to  |

**Returns:** *void*

<hr />

# Class: TrezorSubprovider


##   Constructors



\+ **new TrezorSubprovider**(`config`: [TrezorSubproviderConfig](#interface-trezorsubproviderconfig)): *[TrezorSubprovider](#class-trezorsubprovider)*

*Defined in [subproviders/src/subproviders/trezor.ts:32](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/trezor.ts#L32)*

Instantiates a TrezorSubprovider. Defaults to private key path set to `44'/60'/0'/0/`.
Must be initialized with trezor-connect API module https://github.com/trezor/connect.

**Parameters:**

Name | Type |
------ | ------ |
`config` | [TrezorSubproviderConfig](#interface-trezorsubproviderconfig) |

**Returns:** *[TrezorSubprovider](#class-trezorsubprovider)*

TrezorSubprovider instance

## Methods

###  emitPayloadAsync

▸ **emitPayloadAsync**(`payload`: `Partial<JSONRPCRequestPayloadWithMethod>`): *`Promise<JSONRPCResponsePayload>`*

*Inherited from [Subprovider](#interface-subprovider).[emitPayloadAsync](#emitpayloadasync)*

*Defined in [subproviders/src/subproviders/subprovider.ts:55](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/subprovider.ts#L55)*

Emits a JSON RPC payload that will then be handled by the ProviderEngine instance
this subprovider is a part of. The payload will cascade down the subprovider middleware
stack until finding the responsible entity for handling the request.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`payload` | `Partial<JSONRPCRequestPayloadWithMethod>` | JSON RPC payload |

**Returns:** *`Promise<JSONRPCResponsePayload>`*

JSON RPC response payload

___

###  getAccountsAsync

▸ **getAccountsAsync**(`numberOfAccounts`: number): *`Promise<string[]>`*

*Overrides void*

*Defined in [subproviders/src/subproviders/trezor.ts:56](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/trezor.ts#L56)*

Retrieve a users Trezor account. This method is automatically called
when issuing a `eth_accounts` JSON RPC request via your providerEngine
instance.

**Parameters:**

Name | Type | Default |
------ | ------ | ------ |
`numberOfAccounts` | number |  DEFAULT_NUM_ADDRESSES_TO_FETCH |

**Returns:** *`Promise<string[]>`*

An array of accounts

___

###  handleRequest

▸ **handleRequest**(`payload`: `JSONRPCRequestPayload`, `next`: [Callback](#callback), `end`: [ErrorCallback](#errorcallback)): *`Promise<void>`*



*Overrides [Subprovider](_subproviders_src_subproviders_subprovider_.subprovider.md).[handleRequest](#abstract-handlerequest)*

*Defined in [subproviders/src/subproviders/base_wallet_subprovider.ts:37](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/base_wallet_subprovider.ts#L37)*

This method conforms to the web3-provider-engine interface.
It is called internally by the ProviderEngine when it is this subproviders
turn to handle a JSON RPC request.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`payload` | `JSONRPCRequestPayload` | JSON RPC payload |
`next` | [Callback](#callback) | Callback to call if this subprovider decides not to handle the request |
`end` | [ErrorCallback](#errorcallback) | Callback to call if subprovider handled the request and wants to pass back the request.  |

**Returns:** *`Promise<void>`*

___

###  setEngine

▸ **setEngine**(`engine`: `Web3ProviderEngine`): *void*

*Inherited from [Subprovider](#interface-subprovider).[setEngine](#setengine)*

*Defined in [subproviders/src/subproviders/subprovider.ts:68](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/subprovider.ts#L68)*

Set's the subprovider's engine to the ProviderEngine it is added to.
This is only called within the ProviderEngine source code, do not call
directly.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`engine` | `Web3ProviderEngine` | The ProviderEngine this subprovider is added to  |

**Returns:** *void*

___

###  signPersonalMessageAsync

▸ **signPersonalMessageAsync**(`data`: string, `address`: string): *`Promise<string>`*

*Overrides void*

*Defined in [subproviders/src/subproviders/trezor.ts:129](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/trezor.ts#L129)*

Sign a personal Ethereum signed message. The signing account will be the account
associated with the provided address. If you've added the TrezorSubprovider to
your app's provider, you can simply send an `eth_sign` or `personal_sign` JSON RPC
request, and this method will be called auto-magically.
If you are not using this via a ProviderEngine instance, you can call it directly.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`data` | string | Hex string message to sign |
`address` | string | Address of the account to sign with |

**Returns:** *`Promise<string>`*

Signature hex string (order: rsv)

___

###  signTransactionAsync

▸ **signTransactionAsync**(`txData`: [PartialTxParams](#interface-partialtxparams)): *`Promise<string>`*

*Overrides void*

*Defined in [subproviders/src/subproviders/trezor.ts:70](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/trezor.ts#L70)*

Signs a transaction on the Trezor with the account specificed by the `from` field in txParams.
If you've added the TrezorSubprovider to your app's provider, you can simply send an `eth_sendTransaction`
JSON RPC request, and this method will be called auto-magically. If you are not using this via a ProviderEngine
instance, you can call it directly.

**Parameters:**

Name | Type |
------ | ------ |
`txData` | [PartialTxParams](#interface-partialtxparams) |

**Returns:** *`Promise<string>`*

Signed transaction hex string

___

###  signTypedDataAsync

▸ **signTypedDataAsync**(`address`: string, `typedData`: any): *`Promise<string>`*

*Overrides void*

*Defined in [subproviders/src/subproviders/trezor.ts:161](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/subproviders/trezor.ts#L161)*

TODO:: eth_signTypedData is currently not supported on Trezor devices.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`address` | string | Address of the account to sign with |
`typedData` | any | - |

**Returns:** *`Promise<string>`*

Signature hex string (order: rsv)

<hr />











# Enumeration: NonceSubproviderErrors


##  Enumeration members

###  CannotDetermineAddressFromPayload

• **CannotDetermineAddressFromPayload**: = "CANNOT_DETERMINE_ADDRESS_FROM_PAYLOAD"

*Defined in [subproviders/src/types.ts:121](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L121)*

___

###  EmptyParametersFound

• **EmptyParametersFound**: = "EMPTY_PARAMETERS_FOUND"

*Defined in [subproviders/src/types.ts:120](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L120)*

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

# Interface: AccountFetchingConfigs

addressSearchLimit: The maximum number of addresses to search through, defaults to 1000
numAddressesToReturn: Number of addresses to return from 'eth_accounts' call
shouldAskForOnDeviceConfirmation: Whether you wish to prompt the user on their Ledger
                                  before fetching their addresses


##   Properties

### `Optional` addressSearchLimit

• **addressSearchLimit**? : *undefined | number*

*Defined in [subproviders/src/types.ts:55](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L55)*

___

### `Optional` numAddressesToReturn

• **numAddressesToReturn**? : *undefined | number*

*Defined in [subproviders/src/types.ts:56](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L56)*

___

### `Optional` shouldAskForOnDeviceConfirmation

• **shouldAskForOnDeviceConfirmation**? : *undefined | false | true*

*Defined in [subproviders/src/types.ts:57](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L57)*

<hr />



# Interface: ECSignatureString


##   Properties

###  r

• **r**: *string*

*Defined in [subproviders/src/types.ts:29](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L29)*

___

###  s

• **s**: *string*

*Defined in [subproviders/src/types.ts:30](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L30)*

___

###  v

• **v**: *string*

*Defined in [subproviders/src/types.ts:28](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L28)*

<hr />

# Interface: JSONRPCRequestPayloadWithMethod


##   Properties

###  id

• **id**: *number*



Defined in ethereum-types/lib/index.d.ts:267

___

###  jsonrpc

• **jsonrpc**: *string*



Defined in ethereum-types/lib/index.d.ts:268

___

###  method

• **method**: *string*

*Overrides void*

*Defined in [subproviders/src/types.ts:136](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L136)*

___

###  params

• **params**: *any[]*



Defined in ethereum-types/lib/index.d.ts:265

<hr />





# Interface: LedgerEthereumClient

Elliptic Curve signature
The LedgerEthereumClient sends Ethereum-specific requests to the Ledger Nano S
It uses an internal LedgerCommunicationClient to relay these requests. Currently
NodeJs and Browser communication are supported.


##   Properties

###  getAddress

• **getAddress**: *function*

*Defined in [subproviders/src/types.ts:17](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L17)*

#### Type declaration:

▸ (`derivationPath`: string, `askForDeviceConfirmation`: boolean, `shouldGetChainCode`: true): *`Promise<LedgerGetAddressResult>`*

**Parameters:**

Name | Type |
------ | ------ |
`derivationPath` | string |
`askForDeviceConfirmation` | boolean |
`shouldGetChainCode` | true |

___

###  signPersonalMessage

• **signPersonalMessage**: *function*

*Defined in [subproviders/src/types.ts:23](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L23)*

#### Type declaration:

▸ (`derivationPath`: string, `messageHex`: string): *`Promise<ECSignature>`*

**Parameters:**

Name | Type |
------ | ------ |
`derivationPath` | string |
`messageHex` | string |

___

###  signTransaction

• **signTransaction**: *function*

*Defined in [subproviders/src/types.ts:22](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L22)*

#### Type declaration:

▸ (`derivationPath`: string, `rawTxHex`: string): *`Promise<ECSignatureString>`*

**Parameters:**

Name | Type |
------ | ------ |
`derivationPath` | string |
`rawTxHex` | string |

___

###  transport

• **transport**: *[LedgerCommunicationClient](#class-ledgercommunicationclient)*

*Defined in [subproviders/src/types.ts:24](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L24)*

<hr />

# Interface: LedgerGetAddressResult


##   Properties

###  address

• **address**: *string*

*Defined in [subproviders/src/types.ts:79](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L79)*

___

###  chainCode

• **chainCode**: *string*

*Defined in [subproviders/src/types.ts:81](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L81)*

___

###  publicKey

• **publicKey**: *string*

*Defined in [subproviders/src/types.ts:80](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L80)*

<hr />

# Interface: LedgerSubproviderConfigs

networkId: The ethereum networkId to set as the chainId from EIP155
ledgerConnectionType: Environment in which you wish to connect to Ledger (nodejs or browser)
derivationPath: Initial derivation path to use e.g 44'/60'/0'
accountFetchingConfigs: configs related to fetching accounts from a Ledger


##   Properties

### `Optional` accountFetchingConfigs

• **accountFetchingConfigs**? : *[AccountFetchingConfigs](#class-accountfetchingconfigs)*

*Defined in [subproviders/src/types.ts:45](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L45)*

___

### `Optional` baseDerivationPath

• **baseDerivationPath**? : *undefined | string*

*Defined in [subproviders/src/types.ts:44](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L44)*

___

###  ledgerEthereumClientFactoryAsync

• **ledgerEthereumClientFactoryAsync**: *[LedgerEthereumClientFactoryAsync](#ledgerethereumclientfactoryasync)*

*Defined in [subproviders/src/types.ts:43](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L43)*

___

###  networkId

• **networkId**: *number*

*Defined in [subproviders/src/types.ts:42](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L42)*

<hr />

# Interface: MnemonicWalletSubproviderConfigs

mnemonic: The string mnemonic seed
addressSearchLimit: The maximum number of addresses to search through, defaults to 1000
baseDerivationPath: The base derivation path (e.g 44'/60'/0'/0)


##   Properties

### `Optional` addressSearchLimit

• **addressSearchLimit**? : *undefined | number*

*Defined in [subproviders/src/types.ts:67](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L67)*

___

### `Optional` baseDerivationPath

• **baseDerivationPath**? : *undefined | string*

*Defined in [subproviders/src/types.ts:68](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L68)*

___

###  mnemonic

• **mnemonic**: *string*

*Defined in [subproviders/src/types.ts:66](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L66)*

<hr />

# Interface: PartialTxParams


##   Properties

###  chainId

• **chainId**: *number*

*Defined in [subproviders/src/types.ts:92](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L92)*

___

### `Optional` data

• **data**? : *undefined | string*

*Defined in [subproviders/src/types.ts:91](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L91)*

___

###  from

• **from**: *string*

*Defined in [subproviders/src/types.ts:89](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L89)*

___

###  gas

• **gas**: *string*

*Defined in [subproviders/src/types.ts:87](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L87)*

___

### `Optional` gasPrice

• **gasPrice**? : *undefined | string*

*Defined in [subproviders/src/types.ts:86](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L86)*

___

###  nonce

• **nonce**: *string*

*Defined in [subproviders/src/types.ts:85](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L85)*

___

###  to

• **to**: *string*

*Defined in [subproviders/src/types.ts:88](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L88)*

___

### `Optional` value

• **value**? : *undefined | string*

*Defined in [subproviders/src/types.ts:90](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L90)*

<hr />















# Interface: TrezorSubproviderConfig


##   Properties

###  accountFetchingConfigs

• **accountFetchingConfigs**: *[AccountFetchingConfigs](#class-accountfetchingconfigs)*

*Defined in [subproviders/src/types.ts:140](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L140)*

___

###  networkId

• **networkId**: *number*

*Defined in [subproviders/src/types.ts:142](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L142)*

___

###  trezorConnectClientApi

• **trezorConnectClientApi**: *any*

*Defined in [subproviders/src/types.ts:141](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L141)*

<hr />





























# Interface: ECSignature

Elliptic Curve signature


##   Properties

###  r

• **r**: *string*

*Defined in [types/src/index.ts:62](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L62)*

___

###  s

• **s**: *string*

*Defined in [types/src/index.ts:63](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L63)*

___

###  v

• **v**: *number*

*Defined in [types/src/index.ts:61](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L61)*

<hr />



# Interface: EIP712Object


##  Hierarchy

* **EIP712Parameter**


##  Properties

###  name

• **name**: *string*

*Defined in [types/src/index.ts:720](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L720)*

___

###  type

• **type**: *string*

*Defined in [types/src/index.ts:721](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L721)*

<hr />

# Interface: EIP712TypedData


##   Properties

###  domain

• **domain**: *[EIP712Object](#class-eip712object)*

*Defined in [types/src/index.ts:736](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L736)*

___

###  message

• **message**: *[EIP712Object](#class-eip712object)*

*Defined in [types/src/index.ts:737](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L737)*

___

###  primaryType

• **primaryType**: *string*

*Defined in [types/src/index.ts:738](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L738)*

___

###  types

• **types**: *[EIP712Types](#class-eip712types)*

*Defined in [types/src/index.ts:735](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L735)*

<hr />

# Interface: EIP712Types


##  Hierarchy

* **ElementType**


##  Properties

###  name

• **name**: *string*

*Defined in [types/src/index.ts:674](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L674)*

___

###  typeDocType

• **typeDocType**: *[TypeDocTypes](#enumeration-typedoctypes)*

*Defined in [types/src/index.ts:675](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L675)*

<hr />













 






































































































##  Type aliases













###  EIP1193Event

Ƭ **EIP1193Event**: *"accountsChanged" | "networkChanged" | "close" | "connect" | "notification"*

*Defined in [ethereum-types/src/index.ts:70](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L70)*

Interface for providers that conform to EIP 1193
Source: https://github.com/ethereum/EIPs/blob/master/EIPS/eip-1193.md

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











###  SupportedProvider

Ƭ **SupportedProvider**: *[Web3JsProvider](_ethereum_types_src_index_.md#web3jsprovider) | [GanacheProvider](#interface-ganacheprovider) | [EIP1193Provider](#interface-eip1193provider) | [ZeroExProvider](#interface-zeroexprovider)*

*Defined in [ethereum-types/src/index.ts:9](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L9)*

Do not create your own provider. Use an existing provider from a Web3 or ProviderEngine library
Read more about Providers in the guides section of the 0x docs.

___





###  Web3JsProvider

Ƭ **Web3JsProvider**: *[Web3JsV1Provider](#interface-web3jsv1provider) | [Web3JsV2Provider](#interface-web3jsv2provider) | [Web3JsV3Provider](#interface-web3jsv3provider)*

*Defined in [ethereum-types/src/index.ts:11](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L11)*

<hr />




##  Functions

###  ledgerEthereumBrowserClientFactoryAsync

▸ **ledgerEthereumBrowserClientFactoryAsync**(): *`Promise<LedgerEthereumClient>`*

*Defined in [subproviders/src/index.ts:11](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/index.ts#L11)*

A factory method for creating a LedgerEthereumClient usable in a browser context.

**Returns:** *`Promise<LedgerEthereumClient>`*

LedgerEthereumClient A browser client for the LedgerSubprovider

<hr />



<hr /> 



<hr /> 



<hr /> 



<hr /> 



<hr /> 



<hr /> 



<hr /> 



<hr /> 



<hr /> 



<hr /> 



<hr /> 



<hr /> 



<hr /> 




##  Type aliases

###  Callback

Ƭ **Callback**: *function*

*Defined in [subproviders/src/types.ts:131](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L131)*

#### Type declaration:

▸ (): *void*

___



###  ErrorCallback

Ƭ **ErrorCallback**: *function*

*Defined in [subproviders/src/types.ts:130](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L130)*

#### Type declaration:

▸ (`err`: `Error` | null, `data?`: any): *void*

**Parameters:**

Name | Type |
------ | ------ |
`err` | `Error` \| null |
`data?` | any |

___

###  LedgerEthereumClientFactoryAsync

Ƭ **LedgerEthereumClientFactoryAsync**: *function*

*Defined in [subproviders/src/types.ts:33](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L33)*

#### Type declaration:

▸ (): *`Promise<LedgerEthereumClient>`*

___

###  NextCallback

Ƭ **NextCallback**: *function*

*Defined in [subproviders/src/types.ts:133](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L133)*

#### Type declaration:

▸ (`callback?`: [OnNextCompleted](#onnextcompleted)): *void*

**Parameters:**

Name | Type |
------ | ------ |
`callback?` | [OnNextCompleted](#onnextcompleted) |

___

###  OnNextCompleted

Ƭ **OnNextCompleted**: *function*

*Defined in [subproviders/src/types.ts:132](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/types.ts#L132)*

#### Type declaration:

▸ (`err`: `Error` | null, `result`: any, `cb`: [Callback](#callback)): *void*

**Parameters:**

Name | Type |
------ | ------ |
`err` | `Error` \| null |
`result` | any |
`cb` | [Callback](#callback) |

<hr />




##  Functions

###  prependSubprovider

▸ **prependSubprovider**(`provider`: `Web3ProviderEngine`, `subprovider`: [Subprovider](#class-subprovider)): *void*

*Defined in [subproviders/src/utils/subprovider_utils.ts:10](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/subproviders/src/utils/subprovider_utils.ts#L10)*

Prepends a subprovider to a provider

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`provider` | `Web3ProviderEngine` | Given provider |
`subprovider` | [Subprovider](#class-subprovider) | Subprovider to prepend  |

**Returns:** *void*

<hr />




##  Type aliases









###  EIP712ObjectValue

Ƭ **EIP712ObjectValue**: *string | number | [EIP712Object](#interface-eip712object)*

*Defined in [types/src/index.ts:728](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L728)*

___












