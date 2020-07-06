# Class: InsufficientAssetLiquidityError

Error class representing insufficient asset liquidity


##   Constructors



\+ **new InsufficientAssetLiquidityError**(`amountAvailableToFill`: `BigNumber`): *[InsufficientAssetLiquidityError](#class-insufficientassetliquidityerror)*

*Defined in [asset-swapper/src/errors.ts:12](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/errors.ts#L12)*

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`amountAvailableToFill` | `BigNumber` | The amount availabe to fill (in base units) factoring in slippage  |

**Returns:** *[InsufficientAssetLiquidityError](#class-insufficientassetliquidityerror)*

## Properties

###  amountAvailableToFill

• **amountAvailableToFill**: *`BigNumber`*

*Defined in [asset-swapper/src/errors.ts:12](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/errors.ts#L12)*

The amount availabe to fill (in base units) factoring in slippage.

___

###  message

• **message**: *string*





___

###  name

• **name**: *string*





___

### `Optional` stack

• **stack**? : *undefined | string*



*Overrides void*



___

### `Static` Error

▪ **Error**: *`ErrorConstructor`*



<hr />

# Class: SwapQuoteConsumer


##  Implements

* [SwapQuoteConsumerBase](#interface-swapquoteconsumerbase)‹*[SmartContractParams](#smartcontractparams)*›


##  Constructors



\+ **new SwapQuoteConsumer**(`supportedProvider`: [SupportedProvider](#supportedprovider), `options`: `Partial<SwapQuoteConsumerOpts>`): *[SwapQuoteConsumer](#class-swapquoteconsumer)*

*Defined in [asset-swapper/src/quote_consumers/swap_quote_consumer.ts:31](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/quote_consumers/swap_quote_consumer.ts#L31)*

**Parameters:**

Name | Type | Default |
------ | ------ | ------ |
`supportedProvider` | [SupportedProvider](#supportedprovider) | - |
`options` | `Partial<SwapQuoteConsumerOpts>` |  {} |

**Returns:** *[SwapQuoteConsumer](#class-swapquoteconsumer)*

## Properties

###  networkId

• **networkId**: *number*

*Defined in [asset-swapper/src/quote_consumers/swap_quote_consumer.ts:27](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/quote_consumers/swap_quote_consumer.ts#L27)*

___

###  provider

• **provider**: *`ZeroExProvider`*

*Defined in [asset-swapper/src/quote_consumers/swap_quote_consumer.ts:26](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/quote_consumers/swap_quote_consumer.ts#L26)*

## Methods

###  executeSwapQuoteOrThrowAsync

▸ **executeSwapQuoteOrThrowAsync**(`quote`: [SwapQuote](#swapquote), `opts`: `Partial<SwapQuoteExecutionOpts>`): *`Promise<string>`*

*Implementation of [SwapQuoteConsumerBase](#interface-swapquoteconsumerbase)*

*Defined in [asset-swapper/src/quote_consumers/swap_quote_consumer.ts:81](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/quote_consumers/swap_quote_consumer.ts#L81)*

Given a SwapQuote and desired rate (in takerAsset), attempt to execute the swap.

**Parameters:**

Name | Type | Default | Description |
------ | ------ | ------ | ------ |
`quote` | [SwapQuote](#swapquote) | - | An object that conforms to SwapQuote. See type definition for more information. |
`opts` | `Partial<SwapQuoteExecutionOpts>` |  {} | Options for getting CalldataInfo. See type definition for more information.  |

**Returns:** *`Promise<string>`*

___

###  getCalldataOrThrowAsync

▸ **getCalldataOrThrowAsync**(`quote`: [SwapQuote](#swapquote), `opts`: `Partial<SwapQuoteGetOutputOpts>`): *`Promise<CalldataInfo>`*

*Implementation of [SwapQuoteConsumerBase](#interface-swapquoteconsumerbase)*

*Defined in [asset-swapper/src/quote_consumers/swap_quote_consumer.ts:53](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/quote_consumers/swap_quote_consumer.ts#L53)*

Given a SwapQuote, returns 'CalldataInfo' for a 0x exchange call. See type definition of CalldataInfo for more information.

**Parameters:**

Name | Type | Default | Description |
------ | ------ | ------ | ------ |
`quote` | [SwapQuote](#swapquote) | - | An object that conforms to SwapQuote. See type definition for more information. |
`opts` | `Partial<SwapQuoteGetOutputOpts>` |  {} | Options for getting SmartContractParams. See type definition for more information.  |

**Returns:** *`Promise<CalldataInfo>`*

___

###  getOptimalExtensionContractTypeAsync

▸ **getOptimalExtensionContractTypeAsync**(`quote`: [SwapQuote](#swapquote), `opts`: `Partial<GetExtensionContractTypeOpts>`): *`Promise<ExtensionContractType>`*

*Defined in [asset-swapper/src/quote_consumers/swap_quote_consumer.ts:90](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/quote_consumers/swap_quote_consumer.ts#L90)*

**Parameters:**

Name | Type | Default |
------ | ------ | ------ |
`quote` | [SwapQuote](#swapquote) | - |
`opts` | `Partial<GetExtensionContractTypeOpts>` |  {} |

**Returns:** *`Promise<ExtensionContractType>`*

___

###  getSmartContractParamsOrThrowAsync

▸ **getSmartContractParamsOrThrowAsync**(`quote`: [SwapQuote](#swapquote), `opts`: `Partial<SwapQuoteGetOutputOpts>`): *`Promise<SmartContractParamsInfo<SmartContractParams>>`*

*Implementation of [SwapQuoteConsumerBase](#interface-swapquoteconsumerbase)*

*Defined in [asset-swapper/src/quote_consumers/swap_quote_consumer.ts:67](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/quote_consumers/swap_quote_consumer.ts#L67)*

Given a SwapQuote, returns 'SmartContractParamsInfo' for a 0x exchange call. See type definition of SmartContractParamsInfo for more information.

**Parameters:**

Name | Type | Default | Description |
------ | ------ | ------ | ------ |
`quote` | [SwapQuote](#swapquote) | - | An object that conforms to SwapQuote. See type definition for more information. |
`opts` | `Partial<SwapQuoteGetOutputOpts>` |  {} | Options for getting SmartContractParams. See type definition for more information.  |

**Returns:** *`Promise<SmartContractParamsInfo<SmartContractParams>>`*

<hr />

# Class: SwapQuoter


##   Constructors



\+ **new SwapQuoter**(`supportedProvider`: [SupportedProvider](#supportedprovider), `orderbook`: `Orderbook`, `options`: `Partial<SwapQuoterOpts>`): *[SwapQuoter](#class-swapquoter)*

*Defined in [asset-swapper/src/swap_quoter.ts:126](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/swap_quoter.ts#L126)*

Instantiates a new SwapQuoter instance

**Parameters:**

Name | Type | Default | Description |
------ | ------ | ------ | ------ |
`supportedProvider` | [SupportedProvider](#supportedprovider) | - | The Provider instance you would like to use for interacting with the Ethereum network. |
`orderbook` | `Orderbook` | - | An object that conforms to Orderbook, see type for definition. |
`options` | `Partial<SwapQuoterOpts>` |  {} | Initialization options for the SwapQuoter. See type definition for details.  |

**Returns:** *[SwapQuoter](#class-swapquoter)*

An instance of SwapQuoter

## Properties

###  expiryBufferMs

• **expiryBufferMs**: *number*

*Defined in [asset-swapper/src/swap_quoter.ts:30](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/swap_quoter.ts#L30)*

___

###  orderbook

• **orderbook**: *`Orderbook`*

*Defined in [asset-swapper/src/swap_quoter.ts:29](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/swap_quoter.ts#L29)*

___

###  provider

• **provider**: *`ZeroExProvider`*

*Defined in [asset-swapper/src/swap_quoter.ts:28](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/swap_quoter.ts#L28)*

## Methods

###  destroyAsync

▸ **destroyAsync**(): *`Promise<void>`*

*Defined in [asset-swapper/src/swap_quoter.ts:391](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/swap_quoter.ts#L391)*

Destroys any subscriptions or connections.

**Returns:** *`Promise<void>`*

___

###  getAvailableMakerAssetDatasAsync

▸ **getAvailableMakerAssetDatasAsync**(`takerAssetData`: string): *`Promise<string[]>`*

*Defined in [asset-swapper/src/swap_quoter.ts:309](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/swap_quoter.ts#L309)*

Get the asset data of all assets that are purchaseable with takerAssetData in the order provider passed in at init.

**Parameters:**

Name | Type |
------ | ------ |
`takerAssetData` | string |

**Returns:** *`Promise<string[]>`*

An array of asset data strings that are purchaseable with takerAssetData.

___

###  getAvailableTakerAssetDatasAsync

▸ **getAvailableTakerAssetDatasAsync**(`makerAssetData`: string): *`Promise<string[]>`*

*Defined in [asset-swapper/src/swap_quoter.ts:294](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/swap_quoter.ts#L294)*

Get the asset data of all assets that can be used to purchase makerAssetData in the order provider passed in at init.

**Parameters:**

Name | Type |
------ | ------ |
`makerAssetData` | string |

**Returns:** *`Promise<string[]>`*

An array of asset data strings that can purchase makerAssetData.

___

###  getLiquidityForMakerTakerAssetDataPairAsync

▸ **getLiquidityForMakerTakerAssetDataPairAsync**(`makerAssetData`: string, `takerAssetData`: string): *`Promise<LiquidityForAssetData>`*

*Defined in [asset-swapper/src/swap_quoter.ts:268](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/swap_quoter.ts#L268)*

Returns information about available liquidity for an asset
Does not factor in slippage or fees

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`makerAssetData` | string | The makerAssetData of the desired asset to swap for (for more info: https://github.com/0xProject/0x-protocol-specification/blob/master/v2/v2-specification.md). |
`takerAssetData` | string | The takerAssetData of the asset to swap makerAssetData for (for more info: https://github.com/0xProject/0x-protocol-specification/blob/master/v2/v2-specification.md).  |

**Returns:** *`Promise<LiquidityForAssetData>`*

An object that conforms to LiquidityForAssetData that satisfies the request. See type definition for more information.

___

###  getMarketBuySwapQuoteAsync

▸ **getMarketBuySwapQuoteAsync**(`makerTokenAddress`: string, `takerTokenAddress`: string, `makerAssetBuyAmount`: `BigNumber`, `options`: `Partial<SwapQuoteRequestOpts>`): *`Promise<SwapQuote>`*

*Defined in [asset-swapper/src/swap_quoter.ts:210](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/swap_quoter.ts#L210)*

Get a `SwapQuote` containing all information relevant to fulfilling a swap between a desired ERC20 token address and ERC20 owned by a provided address.
You can then pass the `SwapQuote` to a `SwapQuoteConsumer` to execute a buy, or process SwapQuote for on-chain consumption.

**Parameters:**

Name | Type | Default | Description |
------ | ------ | ------ | ------ |
`makerTokenAddress` | string | - | The address of the maker asset |
`takerTokenAddress` | string | - | The address of the taker asset |
`makerAssetBuyAmount` | `BigNumber` | - | The amount of maker asset to swap for. |
`options` | `Partial<SwapQuoteRequestOpts>` |  {} | Options for the request. See type definition for more information.  |

**Returns:** *`Promise<SwapQuote>`*

An object that conforms to SwapQuote that satisfies the request. See type definition for more information.

___

###  getMarketBuySwapQuoteForAssetDataAsync

▸ **getMarketBuySwapQuoteForAssetDataAsync**(`makerAssetData`: string, `takerAssetData`: string, `makerAssetBuyAmount`: `BigNumber`, `options`: `Partial<SwapQuoteRequestOpts>`): *`Promise<MarketBuySwapQuote>`*

*Defined in [asset-swapper/src/swap_quoter.ts:185](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/swap_quoter.ts#L185)*

Get a `SwapQuote` containing all information relevant to fulfilling a swap between a desired ERC20 token address and ERC20 owned by a provided address.
You can then pass the `SwapQuote` to a `SwapQuoteConsumer` to execute a buy, or process SwapQuote for on-chain consumption.

**Parameters:**

Name | Type | Default | Description |
------ | ------ | ------ | ------ |
`makerAssetData` | string | - | The makerAssetData of the desired asset to swap for (for more info: https://github.com/0xProject/0x-protocol-specification/blob/master/v2/v2-specification.md). |
`takerAssetData` | string | - | The takerAssetData of the asset to swap makerAssetData for (for more info: https://github.com/0xProject/0x-protocol-specification/blob/master/v2/v2-specification.md). |
`makerAssetBuyAmount` | `BigNumber` | - | The amount of maker asset to swap for. |
`options` | `Partial<SwapQuoteRequestOpts>` |  {} | Options for the request. See type definition for more information.  |

**Returns:** *`Promise<MarketBuySwapQuote>`*

An object that conforms to SwapQuote that satisfies the request. See type definition for more information.

___

###  getMarketSellSwapQuoteAsync

▸ **getMarketSellSwapQuoteAsync**(`makerTokenAddress`: string, `takerTokenAddress`: string, `takerAssetSellAmount`: `BigNumber`, `options`: `Partial<SwapQuoteRequestOpts>`): *`Promise<SwapQuote>`*

*Defined in [asset-swapper/src/swap_quoter.ts:240](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/swap_quoter.ts#L240)*

Get a `SwapQuote` containing all information relevant to fulfilling a swap between a desired ERC20 token address and ERC20 owned by a provided address.
You can then pass the `SwapQuote` to a `SwapQuoteConsumer` to execute a buy, or process SwapQuote for on-chain consumption.

**Parameters:**

Name | Type | Default | Description |
------ | ------ | ------ | ------ |
`makerTokenAddress` | string | - | The address of the maker asset |
`takerTokenAddress` | string | - | The address of the taker asset |
`takerAssetSellAmount` | `BigNumber` | - | The amount of taker asset to sell. |
`options` | `Partial<SwapQuoteRequestOpts>` |  {} | Options for the request. See type definition for more information.  |

**Returns:** *`Promise<SwapQuote>`*

An object that conforms to SwapQuote that satisfies the request. See type definition for more information.

___

###  getMarketSellSwapQuoteForAssetDataAsync

▸ **getMarketSellSwapQuoteForAssetDataAsync**(`makerAssetData`: string, `takerAssetData`: string, `takerAssetSellAmount`: `BigNumber`, `options`: `Partial<SwapQuoteRequestOpts>`): *`Promise<MarketSellSwapQuote>`*

*Defined in [asset-swapper/src/swap_quoter.ts:159](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/swap_quoter.ts#L159)*

Get a `SwapQuote` containing all information relevant to fulfilling a swap between a desired ERC20 token address and ERC20 owned by a provided address.
You can then pass the `SwapQuote` to a `SwapQuoteConsumer` to execute a buy, or process SwapQuote for on-chain consumption.

**Parameters:**

Name | Type | Default | Description |
------ | ------ | ------ | ------ |
`makerAssetData` | string | - | The makerAssetData of the desired asset to swap for (for more info: https://github.com/0xProject/0x-protocol-specification/blob/master/v2/v2-specification.md). |
`takerAssetData` | string | - | The takerAssetData of the asset to swap makerAssetData for (for more info: https://github.com/0xProject/0x-protocol-specification/blob/master/v2/v2-specification.md). |
`takerAssetSellAmount` | `BigNumber` | - | The amount of taker asset to swap for. |
`options` | `Partial<SwapQuoteRequestOpts>` |  {} | Options for the request. See type definition for more information.  |

**Returns:** *`Promise<MarketSellSwapQuote>`*

An object that conforms to SwapQuote that satisfies the request. See type definition for more information.

___

###  getOrdersAndFillableAmountsAsync

▸ **getOrdersAndFillableAmountsAsync**(`makerAssetData`: string, `takerAssetData`: string): *`Promise<OrdersAndFillableAmounts>`*

*Defined in [asset-swapper/src/swap_quoter.ts:341](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/swap_quoter.ts#L341)*

Grab orders from the map, if there is a miss or it is time to refresh, fetch and process the orders

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`makerAssetData` | string | The makerAssetData of the desired asset to swap for (for more info: https://github.com/0xProject/0x-protocol-specification/blob/master/v2/v2-specification.md). |
`takerAssetData` | string | The takerAssetData of the asset to swap makerAssetData for (for more info: https://github.com/0xProject/0x-protocol-specification/blob/master/v2/v2-specification.md).  |

**Returns:** *`Promise<OrdersAndFillableAmounts>`*

___

###  isTakerAddressAllowanceEnoughForBestAndWorstQuoteInfoAsync

▸ **isTakerAddressAllowanceEnoughForBestAndWorstQuoteInfoAsync**(`swapQuote`: [SwapQuote](#swapquote), `takerAddress`: string): *`Promise<[boolean, boolean]>`*

*Defined in [asset-swapper/src/swap_quoter.ts:372](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/swap_quoter.ts#L372)*

Util function to check if takerAddress's allowance is enough for 0x exchange contracts to conduct the swap specified by the swapQuote.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`swapQuote` | [SwapQuote](#swapquote) | The swapQuote in question to check enough allowance enabled for 0x exchange contracts to conduct the swap. |
`takerAddress` | string | The address of the taker of the provided swapQuote  |

**Returns:** *`Promise<[boolean, boolean]>`*

___

###  isTakerMakerAssetDataPairAvailableAsync

▸ **isTakerMakerAssetDataPairAvailableAsync**(`makerAssetData`: string, `takerAssetData`: string): *`Promise<boolean>`*

*Defined in [asset-swapper/src/swap_quoter.ts:324](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/swap_quoter.ts#L324)*

Validates the taker + maker asset pair is available from the order provider provided to `SwapQuote`.

**Parameters:**

Name | Type |
------ | ------ |
`makerAssetData` | string |
`takerAssetData` | string |

**Returns:** *`Promise<boolean>`*

A boolean on if the taker, maker pair exists

___

### `Static` getSwapQuoterForMeshEndpoint

▸ **getSwapQuoterForMeshEndpoint**(`supportedProvider`: [SupportedProvider](#supportedprovider), `meshEndpoint`: string, `options`: `Partial<SwapQuoterOpts & MeshOrderProviderOpts>`): *[SwapQuoter](#class-swapquoter)*

*Defined in [asset-swapper/src/swap_quoter.ts:113](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/swap_quoter.ts#L113)*

Instantiates a new SwapQuoter instance given a 0x Mesh endpoint. This pulls all available liquidity stored in Mesh

**Parameters:**

Name | Type | Default | Description |
------ | ------ | ------ | ------ |
`supportedProvider` | [SupportedProvider](#supportedprovider) | - | The Provider instance you would like to use for interacting with the Ethereum network. |
`meshEndpoint` | string | - | The standard relayer API base HTTP url you would like to source orders from. |
`options` | `Partial<SwapQuoterOpts & MeshOrderProviderOpts>` |  {} | Initialization options for the SwapQuoter. See type definition for details.  |

**Returns:** *[SwapQuoter](#class-swapquoter)*

An instance of SwapQuoter

___

### `Static` getSwapQuoterForProvidedOrders

▸ **getSwapQuoterForProvidedOrders**(`supportedProvider`: [SupportedProvider](#supportedprovider), `orders`: `SignedOrder`[], `options`: `Partial<SwapQuoterOpts>`): *[SwapQuoter](#class-swapquoter)*

*Defined in [asset-swapper/src/swap_quoter.ts:41](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/swap_quoter.ts#L41)*

Instantiates a new SwapQuoter instance given existing liquidity in the form of orders and feeOrders.

**Parameters:**

Name | Type | Default | Description |
------ | ------ | ------ | ------ |
`supportedProvider` | [SupportedProvider](#supportedprovider) | - | The Provider instance you would like to use for interacting with the Ethereum network. |
`orders` | `SignedOrder`[] | - | A non-empty array of objects that conform to SignedOrder. All orders must have the same makerAssetData and takerAssetData. |
`options` | `Partial<SwapQuoterOpts>` |  {} | Initialization options for the SwapQuoter. See type definition for details.  |

**Returns:** *[SwapQuoter](#class-swapquoter)*

An instance of SwapQuoter

___

### `Static` getSwapQuoterForStandardRelayerAPIUrl

▸ **getSwapQuoterForStandardRelayerAPIUrl**(`supportedProvider`: [SupportedProvider](#supportedprovider), `sraApiUrl`: string, `options`: `Partial<SwapQuoterOpts & SRAPollingOrderProviderOpts>`): *[SwapQuoter](#class-swapquoter)*

*Defined in [asset-swapper/src/swap_quoter.ts:61](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/swap_quoter.ts#L61)*

Instantiates a new SwapQuoter instance given a [Standard Relayer API](https://github.com/0xProject/standard-relayer-api) endpoint

**Parameters:**

Name | Type | Default | Description |
------ | ------ | ------ | ------ |
`supportedProvider` | [SupportedProvider](#supportedprovider) | - | The Provider instance you would like to use for interacting with the Ethereum network. |
`sraApiUrl` | string | - | The standard relayer API base HTTP url you would like to source orders from. |
`options` | `Partial<SwapQuoterOpts & SRAPollingOrderProviderOpts>` |  {} | Initialization options for the SwapQuoter. See type definition for details.  |

**Returns:** *[SwapQuoter](#class-swapquoter)*

An instance of SwapQuoter

___

### `Static` getSwapQuoterForStandardRelayerAPIWebsocket

▸ **getSwapQuoterForStandardRelayerAPIWebsocket**(`supportedProvider`: [SupportedProvider](#supportedprovider), `sraApiUrl`: string, `sraWebsocketAPIUrl`: string, `options`: `Partial<SwapQuoterOpts>`): *[SwapQuoter](#class-swapquoter)*

*Defined in [asset-swapper/src/swap_quoter.ts:88](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/swap_quoter.ts#L88)*

Instantiates a new SwapQuoter instance given a [Standard Relayer API](https://github.com/0xProject/standard-relayer-api) endpoint
and a websocket endpoint. This is more effecient than `getSwapQuoterForStandardRelayerAPIUrl` when requesting multiple quotes.

**Parameters:**

Name | Type | Default | Description |
------ | ------ | ------ | ------ |
`supportedProvider` | [SupportedProvider](#supportedprovider) | - | The Provider instance you would like to use for interacting with the Ethereum network. |
`sraApiUrl` | string | - | The standard relayer API base HTTP url you would like to source orders from. |
`sraWebsocketAPIUrl` | string | - | - |
`options` | `Partial<SwapQuoterOpts>` |  {} | Initialization options for the SwapQuoter. See type definition for details.  |

**Returns:** *[SwapQuoter](#class-swapquoter)*

An instance of SwapQuoter

<hr />

# Class: BaseOrderProvider


##   Constructors



\+ **new BaseOrderProvider**(`orderStore`: [OrderStore](_orderbook_src_order_store_.orderstore.md)): *[BaseOrderProvider](#class-baseorderprovider)*

*Defined in [orderbook/src/order_provider/base_order_provider.ts:12](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/order_provider/base_order_provider.ts#L12)*

**Parameters:**

Name | Type |
------ | ------ |
`orderStore` | [OrderStore](#class-orderstore) |

**Returns:** *[BaseOrderProvider](#class-baseorderprovider)*

## Properties

###  _orderStore

• **_orderStore**: *[OrderStore](#class-orderstore)*

*Defined in [orderbook/src/order_provider/base_order_provider.ts:12](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/order_provider/base_order_provider.ts#L12)*

## Methods

### `Abstract` addOrdersAsync

▸ **addOrdersAsync**(`orders`: `SignedOrder`[]): *`Promise<AcceptedRejectedOrders>`*

*Defined in [orderbook/src/order_provider/base_order_provider.ts:27](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/order_provider/base_order_provider.ts#L27)*

**Parameters:**

Name | Type |
------ | ------ |
`orders` | `SignedOrder`[] |

**Returns:** *`Promise<AcceptedRejectedOrders>`*

___

### `Abstract` createSubscriptionForAssetPairAsync

▸ **createSubscriptionForAssetPairAsync**(`makerAssetData`: string, `takerAssetData`: string): *`Promise<void>`*

*Defined in [orderbook/src/order_provider/base_order_provider.ts:18](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/order_provider/base_order_provider.ts#L18)*

**Parameters:**

Name | Type |
------ | ------ |
`makerAssetData` | string |
`takerAssetData` | string |

**Returns:** *`Promise<void>`*

___

### `Abstract` destroyAsync

▸ **destroyAsync**(): *`Promise<void>`*

*Defined in [orderbook/src/order_provider/base_order_provider.ts:25](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/order_provider/base_order_provider.ts#L25)*

**Returns:** *`Promise<void>`*

___

### `Abstract` getAvailableAssetDatasAsync

▸ **getAvailableAssetDatasAsync**(): *`Promise<AssetPairsItem[]>`*

*Defined in [orderbook/src/order_provider/base_order_provider.ts:23](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/order_provider/base_order_provider.ts#L23)*

**Returns:** *`Promise<AssetPairsItem[]>`*

<hr />

# Class: OrderSet


##   Constructors



\+ **new OrderSet**(`orders`: `APIOrder`[]): *[OrderSet](#class-orderset)*

*Defined in [orderbook/src/order_set.ts:6](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/order_set.ts#L6)*

**Parameters:**

Name | Type | Default |
------ | ------ | ------ |
`orders` | `APIOrder`[] |  [] |

**Returns:** *[OrderSet](#class-orderset)*

## Methods

###  add

▸ **add**(`item`: `APIOrder`): *void*

*Defined in [orderbook/src/order_set.ts:19](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/order_set.ts#L19)*

**Parameters:**

Name | Type |
------ | ------ |
`item` | `APIOrder` |

**Returns:** *void*

___

###  addMany

▸ **addMany**(`items`: `APIOrder`[]): *void*

*Defined in [orderbook/src/order_set.ts:25](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/order_set.ts#L25)*

**Parameters:**

Name | Type |
------ | ------ |
`items` | `APIOrder`[] |

**Returns:** *void*

___

###  delete

▸ **delete**(`item`: `APIOrder`): *boolean*

*Defined in [orderbook/src/order_set.ts:57](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/order_set.ts#L57)*

**Parameters:**

Name | Type |
------ | ------ |
`item` | `APIOrder` |

**Returns:** *boolean*

___

###  deleteMany

▸ **deleteMany**(`items`: `APIOrder`[]): *void*

*Defined in [orderbook/src/order_set.ts:61](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/order_set.ts#L61)*

**Parameters:**

Name | Type |
------ | ------ |
`items` | `APIOrder`[] |

**Returns:** *void*

___

###  diff

▸ **diff**(`other`: [OrderSet](#class-orderset)): *object*

*Defined in [orderbook/src/order_set.ts:35](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/order_set.ts#L35)*

**Parameters:**

Name | Type |
------ | ------ |
`other` | [OrderSet](#class-orderset) |

**Returns:** *object*

___

###  has

▸ **has**(`order`: `APIOrder`): *boolean*

*Defined in [orderbook/src/order_set.ts:31](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/order_set.ts#L31)*

**Parameters:**

Name | Type |
------ | ------ |
`order` | `APIOrder` |

**Returns:** *boolean*

___

###  size

▸ **size**(): *number*

*Defined in [orderbook/src/order_set.ts:15](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/order_set.ts#L15)*

**Returns:** *number*

___

###  values

▸ **values**(): *`IterableIterator<APIOrder>`*

*Defined in [orderbook/src/order_set.ts:53](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/order_set.ts#L53)*

**Returns:** *`IterableIterator<APIOrder>`*

<hr />

# Class: OrderStore


##   Methods

###  getOrderSetForAssetPair

▸ **getOrderSetForAssetPair**(`assetPairKey`: string): *[OrderSet](#class-orderset)*

*Defined in [orderbook/src/order_store.ts:19](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/order_store.ts#L19)*

**Parameters:**

Name | Type |
------ | ------ |
`assetPairKey` | string |

**Returns:** *[OrderSet](#class-orderset)*

___

###  getOrderSetForAssets

▸ **getOrderSetForAssets**(`makerAssetData`: string, `takerAssetData`: string): *[OrderSet](#class-orderset)*

*Defined in [orderbook/src/order_store.ts:15](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/order_store.ts#L15)*

**Parameters:**

Name | Type |
------ | ------ |
`makerAssetData` | string |
`takerAssetData` | string |

**Returns:** *[OrderSet](#class-orderset)*

___

###  has

▸ **has**(`assetPairKey`: string): *boolean*

*Defined in [orderbook/src/order_store.ts:34](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/order_store.ts#L34)*

**Parameters:**

Name | Type |
------ | ------ |
`assetPairKey` | string |

**Returns:** *boolean*

___

###  keys

▸ **keys**(): *`IterableIterator<string>`*

*Defined in [orderbook/src/order_store.ts:40](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/order_store.ts#L40)*

**Returns:** *`IterableIterator<string>`*

___

###  update

▸ **update**(`addedRemoved`: [AddedRemovedOrders](#interface-addedremovedorders)): *void*

*Defined in [orderbook/src/order_store.ts:28](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/order_store.ts#L28)*

**Parameters:**

Name | Type |
------ | ------ |
`addedRemoved` | [AddedRemovedOrders](#interface-addedremovedorders) |

**Returns:** *void*

___

###  values

▸ **values**(`assetPairKey`: string): *`APIOrder`[]*

*Defined in [orderbook/src/order_store.ts:37](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/order_store.ts#L37)*

**Parameters:**

Name | Type |
------ | ------ |
`assetPairKey` | string |

**Returns:** *`APIOrder`[]*

___

### `Static` assetPairKeyToAssets

▸ **assetPairKeyToAssets**(`assetPairKey`: string): *string[]*

*Defined in [orderbook/src/order_store.ts:12](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/order_store.ts#L12)*

**Parameters:**

Name | Type |
------ | ------ |
`assetPairKey` | string |

**Returns:** *string[]*

___

### `Static` getKeyForAssetPair

▸ **getKeyForAssetPair**(`makerAssetData`: string, `takerAssetData`: string): *string*

*Defined in [orderbook/src/order_store.ts:9](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/order_store.ts#L9)*

**Parameters:**

Name | Type |
------ | ------ |
`makerAssetData` | string |
`takerAssetData` | string |

**Returns:** *string*

<hr />

# Class: Orderbook


##   Constructors



\+ **new Orderbook**(`orderProvider`: [BaseOrderProvider](_orderbook_src_order_provider_base_order_provider_.baseorderprovider.md), `orderStore`: [OrderStore](_orderbook_src_order_store_.orderstore.md)): *[Orderbook](#class-orderbook)*

*Defined in [orderbook/src/orderbook.ts:55](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/orderbook.ts#L55)*

Creates an Orderbook with the order provider. All order updates are stored
in the `OrderStore`.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`orderProvider` | [BaseOrderProvider](#class-baseorderprovider) | the order provider, e.g SRAWebbsocketOrderProvider |
`orderStore` | [OrderStore](#class-orderstore) | the order store where orders are added and deleted  |

**Returns:** *[Orderbook](#class-orderbook)*

## Methods

###  addOrdersAsync

▸ **addOrdersAsync**(`orders`: `SignedOrder`[]): *`Promise<AcceptedRejectedOrders>`*

*Defined in [orderbook/src/orderbook.ts:98](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/orderbook.ts#L98)*

Adds the orders to the Order Provider. All accepted orders will be returned
and rejected orders will be returned with an message indicating a reason for its rejection

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`orders` | `SignedOrder`[] | The set of Orders to add to the Order Provider  |

**Returns:** *`Promise<AcceptedRejectedOrders>`*

___

###  destroyAsync

▸ **destroyAsync**(): *`Promise<void>`*

*Defined in [orderbook/src/orderbook.ts:104](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/orderbook.ts#L104)*

Destroys any subscriptions or connections.

**Returns:** *`Promise<void>`*

___

###  getAvailableAssetDatasAsync

▸ **getAvailableAssetDatasAsync**(): *`Promise<AssetPairsItem[]>`*

*Defined in [orderbook/src/orderbook.ts:90](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/orderbook.ts#L90)*

Returns all of the Available Asset Pairs for the provided Order Provider.

**Returns:** *`Promise<AssetPairsItem[]>`*

___

###  getOrdersAsync

▸ **getOrdersAsync**(`makerAssetData`: string, `takerAssetData`: string): *`Promise<APIOrder[]>`*

*Defined in [orderbook/src/orderbook.ts:75](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/orderbook.ts#L75)*

Returns all orders where the order.makerAssetData == makerAssetData and
order.takerAssetData == takerAssetData. This pair is then subscribed to
and all future updates will be stored. The first request
to `getOrdersAsync` might fetch the orders from the Order Provider and create a subscription.
Subsequent requests will be quick and up to date and synced with the Order Provider state.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`makerAssetData` | string | the maker asset data |
`takerAssetData` | string | the taker asset data  |

**Returns:** *`Promise<APIOrder[]>`*

___

### `Static` getOrderbookForMeshProvider

▸ **getOrderbookForMeshProvider**(`opts`: [MeshOrderProviderOpts](#interface-meshorderprovideropts)): *[Orderbook](#class-orderbook)*

*Defined in [orderbook/src/orderbook.ts:52](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/orderbook.ts#L52)*

Creates an Orderbook with a Mesh Order Provider. This Provider fetches ALL orders
and subscribes to updates on ALL orders.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`opts` | [MeshOrderProviderOpts](#interface-meshorderprovideropts) | the `MeshOrderProviderOpts`  |

**Returns:** *[Orderbook](#class-orderbook)*

___

### `Static` getOrderbookForPollingProvider

▸ **getOrderbookForPollingProvider**(`opts`: [SRAPollingOrderProviderOpts](#interface-srapollingorderprovideropts)): *[Orderbook](#class-orderbook)*

*Defined in [orderbook/src/orderbook.ts:43](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/orderbook.ts#L43)*

Creates an Orderbook with SRA Polling Provider. This Provider simply polls every interval.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`opts` | [SRAPollingOrderProviderOpts](#interface-srapollingorderprovideropts) | the `SRAPollingOrderProviderOpts`  |

**Returns:** *[Orderbook](#class-orderbook)*

___

### `Static` getOrderbookForProvidedOrders

▸ **getOrderbookForProvidedOrders**(`orders`: `SignedOrder`[]): *[Orderbook](#class-orderbook)*

*Defined in [orderbook/src/orderbook.ts:26](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/orderbook.ts#L26)*

Creates an Orderbook with the provided orders. This provider simply stores the
orders and allows querying. No validation or subscriptions occur.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`orders` | `SignedOrder`[] | the set of SignedOrders  |

**Returns:** *[Orderbook](#class-orderbook)*

___

### `Static` getOrderbookForWebsocketProvider

▸ **getOrderbookForWebsocketProvider**(`opts`: [SRAWebsocketOrderProviderOpts](#interface-srawebsocketorderprovideropts)): *[Orderbook](#class-orderbook)*

*Defined in [orderbook/src/orderbook.ts:35](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/orderbook.ts#L35)*

Creates an Orderbook with the SRA Websocket Provider. This Provider fetches orders via
the SRA http endpoint and then subscribes to the asset pair for future updates.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`opts` | [SRAWebsocketOrderProviderOpts](#interface-srawebsocketorderprovideropts) | the `SRAWebsocketOrderProviderOpts`  |

**Returns:** *[Orderbook](#class-orderbook)*

<hr />

# Enumeration: ExtensionContractType

Represents the varying smart contracts that can consume a valid swap quote


##  Enumeration members

###  Forwarder

• **Forwarder**: = "FORWARDER"

*Defined in [asset-swapper/src/types.ts:90](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L90)*

___

###  None

• **None**: = "NONE"

*Defined in [asset-swapper/src/types.ts:91](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L91)*

<hr />



# Enumeration: SwapQuoterError

Possible error messages thrown by an SwapQuoter instance or associated static methods.


##  Enumeration members

###  AssetUnavailable

• **AssetUnavailable**: = "ASSET_UNAVAILABLE"

*Defined in [asset-swapper/src/types.ts:305](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L305)*

___

###  FeeAssetUnavailable

• **FeeAssetUnavailable**: = "FEE_ASSET_UNAVAILABLE"

*Defined in [asset-swapper/src/types.ts:306](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L306)*

___

###  InsufficientAssetLiquidity

• **InsufficientAssetLiquidity**: = "INSUFFICIENT_ASSET_LIQUIDITY"

*Defined in [asset-swapper/src/types.ts:302](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L302)*

___

###  InsufficientZrxLiquidity

• **InsufficientZrxLiquidity**: = "INSUFFICIENT_ZRX_LIQUIDITY"

*Defined in [asset-swapper/src/types.ts:303](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L303)*

___

###  InvalidOrderProviderResponse

• **InvalidOrderProviderResponse**: = "INVALID_ORDER_PROVIDER_RESPONSE"

*Defined in [asset-swapper/src/types.ts:304](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L304)*

___

###  NoEtherTokenContractFound

• **NoEtherTokenContractFound**: = "NO_ETHER_TOKEN_CONTRACT_FOUND"

*Defined in [asset-swapper/src/types.ts:299](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L299)*

___

###  NoZrxTokenContractFound

• **NoZrxTokenContractFound**: = "NO_ZRX_TOKEN_CONTRACT_FOUND"

*Defined in [asset-swapper/src/types.ts:300](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L300)*

___

###  StandardRelayerApiError

• **StandardRelayerApiError**: = "STANDARD_RELAYER_API_ERROR"

*Defined in [asset-swapper/src/types.ts:301](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L301)*

<hr />

































# Interface: CalldataInfo

Represents the metadata to call a smart contract with calldata.
calldataHexString: The hexstring of the calldata.
methodAbi: The ABI of the smart contract method to call.
toAddress: The contract address to call.
ethAmount: If provided, the eth amount in wei to send with the smart contract call.


##   Properties

###  calldataHexString

• **calldataHexString**: *string*

*Defined in [asset-swapper/src/types.ts:39](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L39)*

___

### `Optional` ethAmount

• **ethAmount**? : *`BigNumber`*

*Defined in [asset-swapper/src/types.ts:42](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L42)*

___

###  methodAbi

• **methodAbi**: *`MethodAbi`*

*Defined in [asset-swapper/src/types.ts:40](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L40)*

___

###  toAddress

• **toAddress**: *string*

*Defined in [asset-swapper/src/types.ts:41](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L41)*

<hr />











# Interface: ForwarderSwapQuoteExecutionOpts


##   Properties

### `Optional` ethAmount

• **ethAmount**? : *`BigNumber`*

*Inherited from [ForwarderSwapQuoteGetOutputOpts](#interface-forwarderswapquotegetoutputopts).[ethAmount](#optional-ethamount)*

*Defined in [asset-swapper/src/types.ts:181](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L181)*

___

###  feePercentage

• **feePercentage**: *number*

*Inherited from [ForwarderSwapQuoteGetOutputOpts](#interface-forwarderswapquotegetoutputopts).[feePercentage](#feepercentage)*

*Defined in [asset-swapper/src/types.ts:179](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L179)*

___

###  feeRecipient

• **feeRecipient**: *string*

*Inherited from [ForwarderSwapQuoteGetOutputOpts](#interface-forwarderswapquotegetoutputopts).[feeRecipient](#feerecipient)*

*Defined in [asset-swapper/src/types.ts:180](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L180)*

___

### `Optional` gasLimit

• **gasLimit**? : *undefined | number*

*Inherited from [SwapQuoteExecutionOptsBase](#interface-swapquoteexecutionoptsbase).[gasLimit](#optional-gaslimit)*

*Defined in [asset-swapper/src/types.ts:169](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L169)*

___

### `Optional` gasPrice

• **gasPrice**? : *`BigNumber`*

*Inherited from [SwapQuoteExecutionOptsBase](#interface-swapquoteexecutionoptsbase).[gasPrice](#optional-gasprice)*

*Defined in [asset-swapper/src/types.ts:170](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L170)*

___

### `Optional` takerAddress

• **takerAddress**? : *undefined | string*

*Inherited from [SwapQuoteExecutionOptsBase](#interface-swapquoteexecutionoptsbase).[takerAddress](#optional-takeraddress)*

*Defined in [asset-swapper/src/types.ts:168](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L168)*

<hr />

# Interface: ForwarderSwapQuoteGetOutputOpts

feePercentage: percentage (up to 5%) of the taker asset paid to feeRecipient
feeRecipient: address of the receiver of the feePercentage of taker asset
ethAmount: The amount of eth (in Wei) sent to the forwarder contract.


##   Properties

### `Optional` ethAmount

• **ethAmount**? : *`BigNumber`*

*Defined in [asset-swapper/src/types.ts:181](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L181)*

___

###  feePercentage

• **feePercentage**: *number*

*Defined in [asset-swapper/src/types.ts:179](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L179)*

___

###  feeRecipient

• **feeRecipient**: *string*

*Defined in [asset-swapper/src/types.ts:180](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L180)*

<hr />

# Interface: GetExtensionContractTypeOpts


##   Properties

### `Optional` ethAmount

• **ethAmount**? : *`BigNumber`*

*Defined in [asset-swapper/src/types.ts:188](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L188)*

___

### `Optional` takerAddress

• **takerAddress**? : *undefined | string*

*Defined in [asset-swapper/src/types.ts:187](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L187)*

<hr />

# Interface: LiquidityForAssetData

Represents available liquidity for a given assetData


##   Properties

###  makerTokensAvailableInBaseUnits

• **makerTokensAvailableInBaseUnits**: *`BigNumber`*

*Defined in [asset-swapper/src/types.ts:322](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L322)*

___

###  takerTokensAvailableInBaseUnits

• **takerTokensAvailableInBaseUnits**: *`BigNumber`*

*Defined in [asset-swapper/src/types.ts:323](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L323)*

<hr />

# Interface: MarketBuySwapQuote

makerAssetFillAmount: The amount of makerAsset bought with takerAsset.
type: Specified MarketOperation the SwapQuote is provided for


##   Properties

###  bestCaseQuoteInfo

• **bestCaseQuoteInfo**: *[SwapQuoteInfo](#class-swapquoteinfo)*

*Inherited from [SwapQuoteBase](#interface-swapquotebase).[bestCaseQuoteInfo](#bestcasequoteinfo)*

*Defined in [asset-swapper/src/types.ts:219](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L219)*

___

###  feeOrders

• **feeOrders**: *`SignedOrder`[]*

*Inherited from [SwapQuoteBase](#interface-swapquotebase).[feeOrders](#feeorders)*

*Defined in [asset-swapper/src/types.ts:218](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L218)*

___

###  makerAssetData

• **makerAssetData**: *string*

*Inherited from [SwapQuoteBase](#interface-swapquotebase).[makerAssetData](#makerassetdata)*

*Defined in [asset-swapper/src/types.ts:216](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L216)*

___

###  makerAssetFillAmount

• **makerAssetFillAmount**: *`BigNumber`*

*Defined in [asset-swapper/src/types.ts:237](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L237)*

___

###  orders

• **orders**: *`SignedOrder`[]*

*Inherited from [SwapQuoteBase](#interface-swapquotebase).[orders](#orders)*

*Defined in [asset-swapper/src/types.ts:217](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L217)*

___

###  takerAssetData

• **takerAssetData**: *string*

*Inherited from [SwapQuoteBase](#interface-swapquotebase).[takerAssetData](#takerassetdata)*

*Defined in [asset-swapper/src/types.ts:215](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L215)*

___

###  type

• **type**: *`Buy`*

*Defined in [asset-swapper/src/types.ts:238](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L238)*

___

###  worstCaseQuoteInfo

• **worstCaseQuoteInfo**: *[SwapQuoteInfo](#class-swapquoteinfo)*

*Inherited from [SwapQuoteBase](#interface-swapquotebase).[worstCaseQuoteInfo](#worstcasequoteinfo)*

*Defined in [asset-swapper/src/types.ts:220](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L220)*

<hr />

# Interface: MarketBuySwapQuoteWithAffiliateFee


##   Properties

###  bestCaseQuoteInfo

• **bestCaseQuoteInfo**: *[SwapQuoteInfo](#class-swapquoteinfo)*

*Inherited from [SwapQuoteBase](#interface-swapquotebase).[bestCaseQuoteInfo](#bestcasequoteinfo)*

*Defined in [asset-swapper/src/types.ts:219](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L219)*

___

###  feeOrders

• **feeOrders**: *`SignedOrder`[]*

*Inherited from [SwapQuoteBase](#interface-swapquotebase).[feeOrders](#feeorders)*

*Defined in [asset-swapper/src/types.ts:218](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L218)*

___

###  feePercentage

• **feePercentage**: *number*

*Inherited from [SwapQuoteWithAffiliateFeeBase](#interface-swapquotewithaffiliatefeebase).[feePercentage](#feepercentage)*

*Defined in [asset-swapper/src/types.ts:242](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L242)*

___

###  makerAssetData

• **makerAssetData**: *string*

*Inherited from [SwapQuoteBase](#interface-swapquotebase).[makerAssetData](#makerassetdata)*

*Defined in [asset-swapper/src/types.ts:216](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L216)*

___

###  makerAssetFillAmount

• **makerAssetFillAmount**: *`BigNumber`*

*Inherited from [MarketBuySwapQuote](#interface-marketbuyswapquote).[makerAssetFillAmount](#makerassetfillamount)*

*Defined in [asset-swapper/src/types.ts:237](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L237)*

___

###  orders

• **orders**: *`SignedOrder`[]*

*Inherited from [SwapQuoteBase](#interface-swapquotebase).[orders](#orders)*

*Defined in [asset-swapper/src/types.ts:217](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L217)*

___

###  takerAssetData

• **takerAssetData**: *string*

*Inherited from [SwapQuoteBase](#interface-swapquotebase).[takerAssetData](#takerassetdata)*

*Defined in [asset-swapper/src/types.ts:215](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L215)*

___

###  type

• **type**: *`Buy`*

*Inherited from [MarketBuySwapQuote](#interface-marketbuyswapquote).[type](#type)*

*Defined in [asset-swapper/src/types.ts:238](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L238)*

___

###  worstCaseQuoteInfo

• **worstCaseQuoteInfo**: *[SwapQuoteInfo](#class-swapquoteinfo)*

*Inherited from [SwapQuoteBase](#interface-swapquotebase).[worstCaseQuoteInfo](#worstcasequoteinfo)*

*Defined in [asset-swapper/src/types.ts:220](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L220)*

<hr />

# Interface: MarketSellSwapQuote

takerAssetFillAmount: The amount of takerAsset sold for makerAsset.
type: Specified MarketOperation the SwapQuote is provided for


##   Properties

###  bestCaseQuoteInfo

• **bestCaseQuoteInfo**: *[SwapQuoteInfo](#class-swapquoteinfo)*

*Inherited from [SwapQuoteBase](#interface-swapquotebase).[bestCaseQuoteInfo](#bestcasequoteinfo)*

*Defined in [asset-swapper/src/types.ts:219](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L219)*

___

###  feeOrders

• **feeOrders**: *`SignedOrder`[]*

*Inherited from [SwapQuoteBase](#interface-swapquotebase).[feeOrders](#feeorders)*

*Defined in [asset-swapper/src/types.ts:218](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L218)*

___

###  makerAssetData

• **makerAssetData**: *string*

*Inherited from [SwapQuoteBase](#interface-swapquotebase).[makerAssetData](#makerassetdata)*

*Defined in [asset-swapper/src/types.ts:216](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L216)*

___

###  orders

• **orders**: *`SignedOrder`[]*

*Inherited from [SwapQuoteBase](#interface-swapquotebase).[orders](#orders)*

*Defined in [asset-swapper/src/types.ts:217](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L217)*

___

###  takerAssetData

• **takerAssetData**: *string*

*Inherited from [SwapQuoteBase](#interface-swapquotebase).[takerAssetData](#takerassetdata)*

*Defined in [asset-swapper/src/types.ts:215](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L215)*

___

###  takerAssetFillAmount

• **takerAssetFillAmount**: *`BigNumber`*

*Defined in [asset-swapper/src/types.ts:228](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L228)*

___

###  type

• **type**: *`Sell`*

*Defined in [asset-swapper/src/types.ts:229](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L229)*

___

###  worstCaseQuoteInfo

• **worstCaseQuoteInfo**: *[SwapQuoteInfo](#class-swapquoteinfo)*

*Inherited from [SwapQuoteBase](#interface-swapquotebase).[worstCaseQuoteInfo](#worstcasequoteinfo)*

*Defined in [asset-swapper/src/types.ts:220](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L220)*

<hr />

# Interface: MarketSellSwapQuoteWithAffiliateFee


##   Properties

###  bestCaseQuoteInfo

• **bestCaseQuoteInfo**: *[SwapQuoteInfo](#class-swapquoteinfo)*

*Inherited from [SwapQuoteBase](#interface-swapquotebase).[bestCaseQuoteInfo](#bestcasequoteinfo)*

*Defined in [asset-swapper/src/types.ts:219](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L219)*

___

###  feeOrders

• **feeOrders**: *`SignedOrder`[]*

*Inherited from [SwapQuoteBase](#interface-swapquotebase).[feeOrders](#feeorders)*

*Defined in [asset-swapper/src/types.ts:218](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L218)*

___

###  feePercentage

• **feePercentage**: *number*

*Inherited from [SwapQuoteWithAffiliateFeeBase](#interface-swapquotewithaffiliatefeebase).[feePercentage](#feepercentage)*

*Defined in [asset-swapper/src/types.ts:242](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L242)*

___

###  makerAssetData

• **makerAssetData**: *string*

*Inherited from [SwapQuoteBase](#interface-swapquotebase).[makerAssetData](#makerassetdata)*

*Defined in [asset-swapper/src/types.ts:216](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L216)*

___

###  orders

• **orders**: *`SignedOrder`[]*

*Inherited from [SwapQuoteBase](#interface-swapquotebase).[orders](#orders)*

*Defined in [asset-swapper/src/types.ts:217](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L217)*

___

###  takerAssetData

• **takerAssetData**: *string*

*Inherited from [SwapQuoteBase](#interface-swapquotebase).[takerAssetData](#takerassetdata)*

*Defined in [asset-swapper/src/types.ts:215](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L215)*

___

###  takerAssetFillAmount

• **takerAssetFillAmount**: *`BigNumber`*

*Inherited from [MarketSellSwapQuote](#interface-marketsellswapquote).[takerAssetFillAmount](#takerassetfillamount)*

*Defined in [asset-swapper/src/types.ts:228](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L228)*

___

###  type

• **type**: *`Sell`*

*Inherited from [MarketSellSwapQuote](#interface-marketsellswapquote).[type](#type)*

*Defined in [asset-swapper/src/types.ts:229](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L229)*

___

###  worstCaseQuoteInfo

• **worstCaseQuoteInfo**: *[SwapQuoteInfo](#class-swapquoteinfo)*

*Inherited from [SwapQuoteBase](#interface-swapquotebase).[worstCaseQuoteInfo](#worstcasequoteinfo)*

*Defined in [asset-swapper/src/types.ts:220](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L220)*

<hr />











# Interface: SmartContractParamsInfo <**T**>

Represents the metadata to call a smart contract with parameters.
params: The metadata object containing all the input parameters of a smart contract call.
toAddress: The contract address to call.
ethAmount: If provided, the eth amount in wei to send with the smart contract call.
methodAbi: The ABI of the smart contract method to call with params.

## Type parameters

▪ **T**


##   Properties

### `Optional` ethAmount

• **ethAmount**? : *`BigNumber`*

*Defined in [asset-swapper/src/types.ts:55](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L55)*

___

###  methodAbi

• **methodAbi**: *`MethodAbi`*

*Defined in [asset-swapper/src/types.ts:56](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L56)*

___

###  params

• **params**: *`T`*

*Defined in [asset-swapper/src/types.ts:53](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L53)*

___

###  toAddress

• **toAddress**: *string*

*Defined in [asset-swapper/src/types.ts:54](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L54)*

<hr />



# Interface: SwapQuoteConsumerBase <**T**>

Interface that varying SwapQuoteConsumers adhere to (exchange consumer, router consumer, forwarder consumer, coordinator consumer)
getCalldataOrThrow: Get CalldataInfo to swap for tokens with provided SwapQuote. Throws if invalid SwapQuote is provided.
getSmartContractParamsOrThrow: Get SmartContractParamsInfo to swap for tokens with provided SwapQuote. Throws if invalid SwapQuote is provided.
executeSwapQuoteOrThrowAsync: Executes a web3 transaction to swap for tokens with provided SwapQuote. Throws if invalid SwapQuote is provided.

## Type parameters

▪ **T**


##  Implemented by

* [SwapQuoteConsumer](#class-swapquoteconsumer)


##  Methods

###  executeSwapQuoteOrThrowAsync

▸ **executeSwapQuoteOrThrowAsync**(`quote`: [SwapQuote](#swapquote), `opts`: `Partial<SwapQuoteExecutionOptsBase>`): *`Promise<string>`*

*Defined in [asset-swapper/src/types.ts:147](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L147)*

**Parameters:**

Name | Type |
------ | ------ |
`quote` | [SwapQuote](#swapquote) |
`opts` | `Partial<SwapQuoteExecutionOptsBase>` |

**Returns:** *`Promise<string>`*

___

###  getCalldataOrThrowAsync

▸ **getCalldataOrThrowAsync**(`quote`: [SwapQuote](#swapquote), `opts`: `Partial<SwapQuoteGetOutputOptsBase>`): *`Promise<CalldataInfo>`*

*Defined in [asset-swapper/src/types.ts:142](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L142)*

**Parameters:**

Name | Type |
------ | ------ |
`quote` | [SwapQuote](#swapquote) |
`opts` | `Partial<SwapQuoteGetOutputOptsBase>` |

**Returns:** *`Promise<CalldataInfo>`*

___

###  getSmartContractParamsOrThrowAsync

▸ **getSmartContractParamsOrThrowAsync**(`quote`: [SwapQuote](#swapquote), `opts`: `Partial<SwapQuoteGetOutputOptsBase>`): *`Promise<SmartContractParamsInfo<T>>`*

*Defined in [asset-swapper/src/types.ts:143](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L143)*

**Parameters:**

Name | Type |
------ | ------ |
`quote` | [SwapQuote](#swapquote) |
`opts` | `Partial<SwapQuoteGetOutputOptsBase>` |

**Returns:** *`Promise<SmartContractParamsInfo<T>>`*

<hr />

# Interface: SwapQuoteConsumerOpts

networkId: The networkId that the desired orders should be for.


##   Properties

###  networkId

• **networkId**: *number*

*Defined in [asset-swapper/src/types.ts:154](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L154)*

<hr />

# Interface: SwapQuoteExecutionOpts

Represents the options for executing a swap quote with SwapQuoteConsumer


##   Properties

### `Optional` ethAmount

• **ethAmount**? : *`BigNumber`*

*Inherited from [ForwarderSwapQuoteGetOutputOpts](#interface-forwarderswapquotegetoutputopts).[ethAmount](#optional-ethamount)*

*Overrides [ForwarderSwapQuoteGetOutputOpts](_asset_swapper_src_types_.forwarderswapquotegetoutputopts.md).[ethAmount](#optional-ethamount)*

*Defined in [asset-swapper/src/types.ts:181](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L181)*

___

###  feePercentage

• **feePercentage**: *number*

*Inherited from [ForwarderSwapQuoteGetOutputOpts](#interface-forwarderswapquotegetoutputopts).[feePercentage](#feepercentage)*

*Overrides [ForwarderSwapQuoteGetOutputOpts](_asset_swapper_src_types_.forwarderswapquotegetoutputopts.md).[feePercentage](#feepercentage)*

*Defined in [asset-swapper/src/types.ts:179](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L179)*

___

###  feeRecipient

• **feeRecipient**: *string*

*Inherited from [ForwarderSwapQuoteGetOutputOpts](#interface-forwarderswapquotegetoutputopts).[feeRecipient](#feerecipient)*

*Overrides [ForwarderSwapQuoteGetOutputOpts](_asset_swapper_src_types_.forwarderswapquotegetoutputopts.md).[feeRecipient](#feerecipient)*

*Defined in [asset-swapper/src/types.ts:180](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L180)*

___

### `Optional` gasLimit

• **gasLimit**? : *undefined | number*

*Inherited from [SwapQuoteExecutionOptsBase](#interface-swapquoteexecutionoptsbase).[gasLimit](#optional-gaslimit)*

*Defined in [asset-swapper/src/types.ts:169](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L169)*

___

### `Optional` gasPrice

• **gasPrice**? : *`BigNumber`*

*Inherited from [SwapQuoteExecutionOptsBase](#interface-swapquoteexecutionoptsbase).[gasPrice](#optional-gasprice)*

*Defined in [asset-swapper/src/types.ts:170](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L170)*

___

### `Optional` takerAddress

• **takerAddress**? : *undefined | string*

*Inherited from [SwapQuoteExecutionOptsBase](#interface-swapquoteexecutionoptsbase).[takerAddress](#optional-takeraddress)*

*Defined in [asset-swapper/src/types.ts:168](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L168)*

___

###  useExtensionContract

• **useExtensionContract**: *[ExtensionContractType](#enumeration-extensioncontracttype)*

*Inherited from [SwapQuoteGetOutputOpts](#interface-swapquotegetoutputopts).[useExtensionContract](#useextensioncontract)*

*Defined in [asset-swapper/src/types.ts:196](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L196)*

<hr />

# Interface: SwapQuoteExecutionOptsBase

takerAddress: The address to perform the buy. Defaults to the first available address from the provider.
gasLimit: The amount of gas to send with a transaction (in Gwei). Defaults to an eth_estimateGas rpc call.
gasPrice: Gas price in Wei to use for a transaction


##   Properties

### `Optional` gasLimit

• **gasLimit**? : *undefined | number*

*Defined in [asset-swapper/src/types.ts:169](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L169)*

___

### `Optional` gasPrice

• **gasPrice**? : *`BigNumber`*

*Defined in [asset-swapper/src/types.ts:170](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L170)*

___

### `Optional` takerAddress

• **takerAddress**? : *undefined | string*

*Defined in [asset-swapper/src/types.ts:168](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L168)*

<hr />

# Interface: SwapQuoteGetOutputOpts

takerAddress: The address to perform the buy. Defaults to the first available address from the provider.
useConsumerType: If provided, defaults the SwapQuoteConsumer to create output consumed by ConsumerType.


##   Properties

### `Optional` ethAmount

• **ethAmount**? : *`BigNumber`*

*Inherited from [ForwarderSwapQuoteGetOutputOpts](#interface-forwarderswapquotegetoutputopts).[ethAmount](#optional-ethamount)*

*Defined in [asset-swapper/src/types.ts:181](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L181)*

___

###  feePercentage

• **feePercentage**: *number*

*Inherited from [ForwarderSwapQuoteGetOutputOpts](#interface-forwarderswapquotegetoutputopts).[feePercentage](#feepercentage)*

*Defined in [asset-swapper/src/types.ts:179](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L179)*

___

###  feeRecipient

• **feeRecipient**: *string*

*Inherited from [ForwarderSwapQuoteGetOutputOpts](#interface-forwarderswapquotegetoutputopts).[feeRecipient](#feerecipient)*

*Defined in [asset-swapper/src/types.ts:180](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L180)*

___

###  useExtensionContract

• **useExtensionContract**: *[ExtensionContractType](#enumeration-extensioncontracttype)*

*Defined in [asset-swapper/src/types.ts:196](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L196)*

<hr />

# Interface: SwapQuoteGetOutputOptsBase

Represents the options provided to a generic SwapQuoteConsumer


##  Hierarchy

* **SwapQuoteInfo**


##  Properties

###  feeTakerTokenAmount

• **feeTakerTokenAmount**: *`BigNumber`*

*Defined in [asset-swapper/src/types.ts:258](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L258)*

___

###  makerTokenAmount

• **makerTokenAmount**: *`BigNumber`*

*Defined in [asset-swapper/src/types.ts:261](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L261)*

___

###  takerTokenAmount

• **takerTokenAmount**: *`BigNumber`*

*Defined in [asset-swapper/src/types.ts:260](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L260)*

___

###  totalTakerTokenAmount

• **totalTakerTokenAmount**: *`BigNumber`*

*Defined in [asset-swapper/src/types.ts:259](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L259)*

<hr />

# Interface: SwapQuoteRequestOpts

shouldDisableRequestingFeeOrders: If set to true, requesting a swapQuote will not perform any computation or requests for fees.
slippagePercentage: The percentage buffer to add to account for slippage. Affects max ETH price estimates. Defaults to 0.2 (20%).


##   Properties

###  shouldDisableRequestingFeeOrders

• **shouldDisableRequestingFeeOrders**: *boolean*

*Defined in [asset-swapper/src/types.ts:269](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L269)*

___

###  slippagePercentage

• **slippagePercentage**: *number*

*Defined in [asset-swapper/src/types.ts:270](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L270)*

<hr />

# Interface: SwapQuoterOpts

networkId: The ethereum network id. Defaults to 1 (mainnet).
orderRefreshIntervalMs: The interval in ms that getBuyQuoteAsync should trigger an refresh of orders and order states. Defaults to 10000ms (10s).
expiryBufferMs: The number of seconds to add when calculating whether an order is expired or not. Defaults to 300s (5m).


##   Properties

###  expiryBufferMs

• **expiryBufferMs**: *number*

*Defined in [asset-swapper/src/types.ts:281](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L281)*

___

###  networkId

• **networkId**: *number*

*Defined in [asset-swapper/src/types.ts:279](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L279)*

___

###  orderRefreshIntervalMs

• **orderRefreshIntervalMs**: *number*

*Defined in [asset-swapper/src/types.ts:280](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L280)*

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

# Interface: AcceptedRejectedOrders


##   Properties

###  accepted

• **accepted**: *`SignedOrder`[]*

*Defined in [orderbook/src/types.ts:15](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/types.ts#L15)*

___

###  rejected

• **rejected**: *[RejectedOrder](#class-rejectedorder)[]*

*Defined in [orderbook/src/types.ts:16](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/types.ts#L16)*

<hr />

# Interface: AddedRemovedOrders


##   Properties

###  added

• **added**: *`APIOrder`[]*

*Defined in [orderbook/src/types.ts:6](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/types.ts#L6)*

___

###  assetPairKey

• **assetPairKey**: *string*

*Defined in [orderbook/src/types.ts:5](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/types.ts#L5)*

___

###  removed

• **removed**: *`APIOrder`[]*

*Defined in [orderbook/src/types.ts:7](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/types.ts#L7)*

<hr />

# Interface: MeshOrderProviderOpts

Constructor options for a Mesh Order Provider


##   Properties

###  websocketEndpoint

• **websocketEndpoint**: *string*

*Defined in [orderbook/src/types.ts:52](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/types.ts#L52)*

___

### `Optional` wsOpts

• **wsOpts**? : *`WSOpts`*

*Defined in [orderbook/src/types.ts:54](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/types.ts#L54)*

<hr />

# Interface: RejectedOrder


##   Properties

###  message

• **message**: *string*

*Defined in [orderbook/src/types.ts:11](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/types.ts#L11)*

___

###  order

• **order**: *`SignedOrder`*

*Defined in [orderbook/src/types.ts:12](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/types.ts#L12)*

<hr />

# Interface: SRAPollingOrderProviderOpts

Constructor options for a SRA Polling Order Provider


##   Properties

###  httpEndpoint

• **httpEndpoint**: *string*

*Defined in [orderbook/src/types.ts:38](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/types.ts#L38)*

___

### `Optional` networkId

• **networkId**? : *undefined | number*

*Defined in [orderbook/src/types.ts:44](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/types.ts#L44)*

___

### `Optional` perPage

• **perPage**? : *undefined | number*

*Defined in [orderbook/src/types.ts:42](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/types.ts#L42)*

___

###  pollingIntervalMs

• **pollingIntervalMs**: *number*

*Defined in [orderbook/src/types.ts:40](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/types.ts#L40)*

<hr />

# Interface: SRAWebsocketOrderProviderOpts

Constructor options for a SRA Websocket Order Provider


##   Properties

###  httpEndpoint

• **httpEndpoint**: *string*

*Defined in [orderbook/src/types.ts:26](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/types.ts#L26)*

___

### `Optional` networkId

• **networkId**? : *undefined | number*

*Defined in [orderbook/src/types.ts:30](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/types.ts#L30)*

___

###  websocketEndpoint

• **websocketEndpoint**: *string*

*Defined in [orderbook/src/types.ts:28](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/types.ts#L28)*

<hr />

# Interface: APIOrder


##   Properties

###  metaData

• **metaData**: *object*

*Defined in [types/src/index.ts:408](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L408)*

___

###  order

• **order**: *[SignedOrder](#class-signedorder)*

*Defined in [types/src/index.ts:407](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L407)*

<hr />



# Interface: Asset


##   Properties

###  assetData

• **assetData**: *string*

*Defined in [types/src/index.ts:424](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L424)*

___

###  maxAmount

• **maxAmount**: *`BigNumber`*

*Defined in [types/src/index.ts:426](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L426)*

___

###  minAmount

• **minAmount**: *`BigNumber`*

*Defined in [types/src/index.ts:425](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L425)*

___

###  precision

• **precision**: *number*

*Defined in [types/src/index.ts:427](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L427)*

<hr />

# Interface: AssetPairsItem


##   Properties

###  assetDataA

• **assetDataA**: *[Asset](#class-asset)*

*Defined in [types/src/index.ts:419](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L419)*

___

###  assetDataB

• **assetDataB**: *[Asset](#class-asset)*

*Defined in [types/src/index.ts:420](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L420)*

<hr />











































 



















































# Interface: SignedOrder


##   Properties

###  chainId

• **chainId**: *number*

*Inherited from [Order](#interface-order).[chainId](#chainid)*

*Defined in [types/src/index.ts:14](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L14)*

___

###  exchangeAddress

• **exchangeAddress**: *string*

*Inherited from [Order](#interface-order).[exchangeAddress](#exchangeaddress)*

*Defined in [types/src/index.ts:15](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L15)*

___

###  expirationTimeSeconds

• **expirationTimeSeconds**: *`BigNumber`*

*Inherited from [Order](#interface-order).[expirationTimeSeconds](#expirationtimeseconds)*

*Defined in [types/src/index.ts:24](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L24)*

___

###  feeRecipientAddress

• **feeRecipientAddress**: *string*

*Inherited from [Order](#interface-order).[feeRecipientAddress](#feerecipientaddress)*

*Defined in [types/src/index.ts:18](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L18)*

___

###  makerAddress

• **makerAddress**: *string*

*Inherited from [Order](#interface-order).[makerAddress](#makeraddress)*

*Defined in [types/src/index.ts:16](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L16)*

___

###  makerAssetAmount

• **makerAssetAmount**: *`BigNumber`*

*Inherited from [Order](#interface-order).[makerAssetAmount](#makerassetamount)*

*Defined in [types/src/index.ts:20](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L20)*

___

###  makerAssetData

• **makerAssetData**: *string*

*Inherited from [Order](#interface-order).[makerAssetData](#makerassetdata)*

*Defined in [types/src/index.ts:26](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L26)*

___

###  makerFee

• **makerFee**: *`BigNumber`*

*Inherited from [Order](#interface-order).[makerFee](#makerfee)*

*Defined in [types/src/index.ts:22](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L22)*

___

###  makerFeeAssetData

• **makerFeeAssetData**: *string*

*Inherited from [Order](#interface-order).[makerFeeAssetData](#makerfeeassetdata)*

*Defined in [types/src/index.ts:28](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L28)*

___

###  salt

• **salt**: *`BigNumber`*

*Inherited from [Order](#interface-order).[salt](#salt)*

*Defined in [types/src/index.ts:25](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L25)*

___

###  senderAddress

• **senderAddress**: *string*

*Inherited from [Order](#interface-order).[senderAddress](#senderaddress)*

*Defined in [types/src/index.ts:19](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L19)*

___

###  signature

• **signature**: *string*

*Defined in [types/src/index.ts:33](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L33)*

___

###  takerAddress

• **takerAddress**: *string*

*Inherited from [Order](#interface-order).[takerAddress](#takeraddress)*

*Defined in [types/src/index.ts:17](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L17)*

___

###  takerAssetAmount

• **takerAssetAmount**: *`BigNumber`*

*Inherited from [Order](#interface-order).[takerAssetAmount](#takerassetamount)*

*Defined in [types/src/index.ts:21](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L21)*

___

###  takerAssetData

• **takerAssetData**: *string*

*Inherited from [Order](#interface-order).[takerAssetData](#takerassetdata)*

*Defined in [types/src/index.ts:27](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L27)*

___

###  takerFee

• **takerFee**: *`BigNumber`*

*Inherited from [Order](#interface-order).[takerFee](#takerfee)*

*Defined in [types/src/index.ts:23](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L23)*

___

###  takerFeeAssetData

• **takerFeeAssetData**: *string*

*Inherited from [Order](#interface-order).[takerFeeAssetData](#takerfeeassetdata)*

*Defined in [types/src/index.ts:29](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L29)*

<hr />

















































<hr /> 



<hr /> 



<hr /> 




##  Type aliases







###  SwapQuote

Ƭ **SwapQuote**: *[MarketBuySwapQuote](#interface-marketbuyswapquote) | [MarketSellSwapQuote](#interface-marketsellswapquote)*

*Defined in [asset-swapper/src/types.ts:184](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-swapper/src/types.ts#L184)*

___






##  Type aliases





###  ConstructorStateMutability

Ƭ **ConstructorStateMutability**: *"nonpayable" | "payable"*

*Defined in [ethereum-types/src/index.ts:84](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L84)*

___







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





###  Web3JsProvider

Ƭ **Web3JsProvider**: *[Web3JsV1Provider](#interface-web3jsv1provider) | [Web3JsV2Provider](#interface-web3jsv2provider) | [Web3JsV3Provider](#interface-web3jsv3provider)*

*Defined in [ethereum-types/src/index.ts:11](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/ethereum-types/src/index.ts#L11)*

<hr />




##  Variables

### `Const` DEFAULT_TOKEN_PRECISION

• **DEFAULT_TOKEN_PRECISION**: *`18`* = 18

*Defined in [orderbook/src/order_provider/base_order_provider.ts:9](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/orderbook/src/order_provider/base_order_provider.ts#L9)*

<hr />



<hr /> 



<hr /> 



<hr /> 




##  Type aliases






##  Type aliases

























<hr />
