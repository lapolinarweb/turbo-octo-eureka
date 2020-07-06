# Class: AssetBuyer


##   Constructors



\+ **new AssetBuyer**(`supportedProvider`: [SupportedProvider](#supportedprovider), `orderProvider`: [OrderProvider](#interface-orderprovider), `options`: `Partial<AssetBuyerOpts>`): *[AssetBuyer](#class-assetbuyer)*

*Defined in [asset-buyer/src/asset_buyer.ts:83](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/asset_buyer.ts#L83)*

Instantiates a new AssetBuyer instance

**Parameters:**

Name | Type | Default | Description |
------ | ------ | ------ | ------ |
`supportedProvider` | [SupportedProvider](#supportedprovider) | - | The Provider instance you would like to use for interacting with the Ethereum network. |
`orderProvider` | [OrderProvider](#interface-orderprovider) | - | An object that conforms to OrderProvider, see type for definition. |
`options` | `Partial<AssetBuyerOpts>` |  {} | Initialization options for the AssetBuyer. See type definition for details.  |

**Returns:** *[AssetBuyer](#class-assetbuyer)*

An instance of AssetBuyer

## Properties

###  expiryBufferSeconds

• **expiryBufferSeconds**: *number*

*Defined in [asset-buyer/src/asset_buyer.ts:40](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/asset_buyer.ts#L40)*

___

###  networkId

• **networkId**: *number*

*Defined in [asset-buyer/src/asset_buyer.ts:38](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/asset_buyer.ts#L38)*

___

###  orderProvider

• **orderProvider**: *[OrderProvider](#interface-orderprovider)*

*Defined in [asset-buyer/src/asset_buyer.ts:37](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/asset_buyer.ts#L37)*

___

###  orderRefreshIntervalMs

• **orderRefreshIntervalMs**: *number*

*Defined in [asset-buyer/src/asset_buyer.ts:39](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/asset_buyer.ts#L39)*

___

###  provider

• **provider**: *`ZeroExProvider`*

*Defined in [asset-buyer/src/asset_buyer.ts:36](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/asset_buyer.ts#L36)*

## Methods

###  executeBuyQuoteAsync

▸ **executeBuyQuoteAsync**(`buyQuote`: [BuyQuote](#interface-buyquote), `options`: `Partial<BuyQuoteExecutionOpts>`): *`Promise<string>`*

*Defined in [asset-buyer/src/asset_buyer.ts:226](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/asset_buyer.ts#L226)*

Given a BuyQuote and desired rate, attempt to execute the buy.

**Parameters:**

Name | Type | Default | Description |
------ | ------ | ------ | ------ |
`buyQuote` | [BuyQuote](#interface-buyquote) | - | An object that conforms to BuyQuote. See type definition for more information. |
`options` | `Partial<BuyQuoteExecutionOpts>` |  {} | Options for the execution of the BuyQuote. See type definition for more information.  |

**Returns:** *`Promise<string>`*

A promise of the txHash.

___

###  getAvailableAssetDatasAsync

▸ **getAvailableAssetDatasAsync**(): *`Promise<string[]>`*

*Defined in [asset-buyer/src/asset_buyer.ts:300](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/asset_buyer.ts#L300)*

Get the asset data of all assets that are purchaseable with ether token (wETH) in the order provider passed in at init.

**Returns:** *`Promise<string[]>`*

An array of asset data strings that can be purchased using wETH.

___

###  getBuyQuoteAsync

▸ **getBuyQuoteAsync**(`assetData`: string, `assetBuyAmount`: `BigNumber`, `options`: `Partial<BuyQuoteRequestOpts>`): *`Promise<BuyQuote>`*

*Defined in [asset-buyer/src/asset_buyer.ts:125](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/asset_buyer.ts#L125)*

Get a `BuyQuote` containing all information relevant to fulfilling a buy given a desired assetData.
You can then pass the `BuyQuote` to `executeBuyQuoteAsync` to execute the buy.

**Parameters:**

Name | Type | Default | Description |
------ | ------ | ------ | ------ |
`assetData` | string | - | The assetData of the desired asset to buy (for more info: https://github.com/0xProject/0x-protocol-specification/blob/master/v2/v2-specification.md). |
`assetBuyAmount` | `BigNumber` | - | The amount of asset to buy. |
`options` | `Partial<BuyQuoteRequestOpts>` |  {} | Options for the request. See type definition for more information.  |

**Returns:** *`Promise<BuyQuote>`*

An object that conforms to BuyQuote that satisfies the request. See type definition for more information.

___

###  getBuyQuoteForERC20TokenAddressAsync

▸ **getBuyQuoteForERC20TokenAddressAsync**(`tokenAddress`: string, `assetBuyAmount`: `BigNumber`, `options`: `Partial<BuyQuoteRequestOpts>`): *`Promise<BuyQuote>`*

*Defined in [asset-buyer/src/asset_buyer.ts:173](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/asset_buyer.ts#L173)*

Get a `BuyQuote` containing all information relevant to fulfilling a buy given a desired ERC20 token address.
You can then pass the `BuyQuote` to `executeBuyQuoteAsync` to execute the buy.

**Parameters:**

Name | Type | Default | Description |
------ | ------ | ------ | ------ |
`tokenAddress` | string | - | The ERC20 token address. |
`assetBuyAmount` | `BigNumber` | - | The amount of asset to buy. |
`options` | `Partial<BuyQuoteRequestOpts>` |  {} | Options for the request. See type definition for more information.  |

**Returns:** *`Promise<BuyQuote>`*

An object that conforms to BuyQuote that satisfies the request. See type definition for more information.

___

###  getLiquidityForAssetDataAsync

▸ **getLiquidityForAssetDataAsync**(`assetData`: string, `options`: `Partial<LiquidityRequestOpts>`): *`Promise<LiquidityForAssetData>`*

*Defined in [asset-buyer/src/asset_buyer.ts:192](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/asset_buyer.ts#L192)*

Returns information about available liquidity for an asset
Does not factor in slippage or fees

**Parameters:**

Name | Type | Default | Description |
------ | ------ | ------ | ------ |
`assetData` | string | - | The assetData of the desired asset to buy (for more info: https://github.com/0xProject/0x-protocol-specification/blob/master/v2/v2-specification.md). |
`options` | `Partial<LiquidityRequestOpts>` |  {} | Options for the request. See type definition for more information.  |

**Returns:** *`Promise<LiquidityForAssetData>`*

An object that conforms to LiquidityForAssetData that satisfies the request. See type definition for more information.

___

###  getOrdersAndFillableAmountsAsync

▸ **getOrdersAndFillableAmountsAsync**(`assetData`: string, `shouldForceOrderRefresh`: boolean): *`Promise<OrdersAndFillableAmounts>`*

*Defined in [asset-buyer/src/asset_buyer.ts:309](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/asset_buyer.ts#L309)*

Grab orders from the map, if there is a miss or it is time to refresh, fetch and process the orders

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`assetData` | string | The assetData of the desired asset to buy (for more info: https://github.com/0xProject/0x-protocol-specification/blob/master/v2/v2-specification.md). |
`shouldForceOrderRefresh` | boolean | If set to true, new orders and state will be fetched instead of waiting for the next orderRefreshIntervalMs.  |

**Returns:** *`Promise<OrdersAndFillableAmounts>`*

___

### `Static` getAssetBuyerForProvidedOrders

▸ **getAssetBuyerForProvidedOrders**(`supportedProvider`: [SupportedProvider](#supportedprovider), `orders`: `SignedOrder`[], `options`: `Partial<AssetBuyerOpts>`): *[AssetBuyer](#class-assetbuyer)*

*Defined in [asset-buyer/src/asset_buyer.ts:53](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/asset_buyer.ts#L53)*

Instantiates a new AssetBuyer instance given existing liquidity in the form of orders and feeOrders.

**Parameters:**

Name | Type | Default | Description |
------ | ------ | ------ | ------ |
`supportedProvider` | [SupportedProvider](#supportedprovider) | - | The Provider instance you would like to use for interacting with the Ethereum network. |
`orders` | `SignedOrder`[] | - | A non-empty array of objects that conform to SignedOrder. All orders must have the same makerAssetData and takerAssetData (WETH). |
`options` | `Partial<AssetBuyerOpts>` |  {} | Initialization options for the AssetBuyer. See type definition for details.  |

**Returns:** *[AssetBuyer](#class-assetbuyer)*

An instance of AssetBuyer

___

### `Static` getAssetBuyerForStandardRelayerAPIUrl

▸ **getAssetBuyerForStandardRelayerAPIUrl**(`supportedProvider`: [SupportedProvider](#supportedprovider), `sraApiUrl`: string, `options`: `Partial<AssetBuyerOpts>`): *[AssetBuyer](#class-assetbuyer)*

*Defined in [asset-buyer/src/asset_buyer.ts:72](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/asset_buyer.ts#L72)*

Instantiates a new AssetBuyer instance given a [Standard Relayer API](https://github.com/0xProject/standard-relayer-api) endpoint

**Parameters:**

Name | Type | Default | Description |
------ | ------ | ------ | ------ |
`supportedProvider` | [SupportedProvider](#supportedprovider) | - | The Provider instance you would like to use for interacting with the Ethereum network. |
`sraApiUrl` | string | - | The standard relayer API base HTTP url you would like to source orders from. |
`options` | `Partial<AssetBuyerOpts>` |  {} | Initialization options for the AssetBuyer. See type definition for details.  |

**Returns:** *[AssetBuyer](#class-assetbuyer)*

An instance of AssetBuyer

<hr />

# Class: InsufficientAssetLiquidityError

Error class representing insufficient asset liquidity


##   Constructors



\+ **new InsufficientAssetLiquidityError**(`amountAvailableToFill`: `BigNumber`): *[InsufficientAssetLiquidityError](#class-insufficientassetliquidityerror)*

*Defined in [asset-buyer/src/errors.ts:12](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/errors.ts#L12)*

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`amountAvailableToFill` | `BigNumber` | The amount availabe to fill (in base units) factoring in slippage  |

**Returns:** *[InsufficientAssetLiquidityError](#class-insufficientassetliquidityerror)*

## Properties

###  amountAvailableToFill

• **amountAvailableToFill**: *`BigNumber`*

*Defined in [asset-buyer/src/errors.ts:12](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/errors.ts#L12)*

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

# Class: BasicOrderProvider


##  Implements

* [OrderProvider](#interface-orderprovider)


##  Constructors



\+ **new BasicOrderProvider**(`orders`: `SignedOrder`[]): *[BasicOrderProvider](#class-basicorderprovider)*

*Defined in [asset-buyer/src/order_providers/basic_order_provider.ts:9](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/order_providers/basic_order_provider.ts#L9)*

Instantiates a new BasicOrderProvider instance

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`orders` | `SignedOrder`[] | An array of objects that conform to SignedOrder to fetch from. |

**Returns:** *[BasicOrderProvider](#class-basicorderprovider)*

An instance of BasicOrderProvider

## Properties

###  orders

• **orders**: *`SignedOrder`[]*

*Defined in [asset-buyer/src/order_providers/basic_order_provider.ts:9](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/order_providers/basic_order_provider.ts#L9)*

## Methods

###  getAvailableMakerAssetDatasAsync

▸ **getAvailableMakerAssetDatasAsync**(`takerAssetData`: string): *`Promise<string[]>`*

*Defined in [asset-buyer/src/order_providers/basic_order_provider.ts:37](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/order_providers/basic_order_provider.ts#L37)*

Given a taker asset data string, return all availabled paired maker asset data strings.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`takerAssetData` | string | A string representing the taker asset data. |

**Returns:** *`Promise<string[]>`*

An array of asset data strings that can be purchased using takerAssetData.

___

###  getOrdersAsync

▸ **getOrdersAsync**(`orderProviderRequest`: [OrderProviderRequest](#interface-orderproviderrequest)): *`Promise<OrderProviderResponse>`*

*Defined in [asset-buyer/src/order_providers/basic_order_provider.ts:24](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/order_providers/basic_order_provider.ts#L24)*

Given an object that conforms to OrderFetcherRequest, return the corresponding OrderProviderResponse that satisfies the request.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`orderProviderRequest` | [OrderProviderRequest](#interface-orderproviderrequest) | An instance of OrderFetcherRequest. See type for more information. |

**Returns:** *`Promise<OrderProviderResponse>`*

An instance of OrderProviderResponse. See type for more information.

<hr />

# Class: StandardRelayerAPIOrderProvider


##  Implements

* [OrderProvider](#interface-orderprovider)


##  Constructors



\+ **new StandardRelayerAPIOrderProvider**(`apiUrl`: string, `networkId`: number): *[StandardRelayerAPIOrderProvider](#class-standardrelayerapiorderprovider)*

*Defined in [asset-buyer/src/order_providers/standard_relayer_api_order_provider.ts:48](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/order_providers/standard_relayer_api_order_provider.ts#L48)*

Instantiates a new StandardRelayerAPIOrderProvider instance

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`apiUrl` | string | The standard relayer API base HTTP url you would like to source orders from. |
`networkId` | number | The ethereum network id. |

**Returns:** *[StandardRelayerAPIOrderProvider](#class-standardrelayerapiorderprovider)*

An instance of StandardRelayerAPIOrderProvider

## Properties

###  apiUrl

• **apiUrl**: *string*

*Defined in [asset-buyer/src/order_providers/standard_relayer_api_order_provider.ts:17](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/order_providers/standard_relayer_api_order_provider.ts#L17)*

___

###  networkId

• **networkId**: *number*

*Defined in [asset-buyer/src/order_providers/standard_relayer_api_order_provider.ts:18](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/order_providers/standard_relayer_api_order_provider.ts#L18)*

## Methods

###  getAvailableMakerAssetDatasAsync

▸ **getAvailableMakerAssetDatasAsync**(`takerAssetData`: string): *`Promise<string[]>`*

*Defined in [asset-buyer/src/order_providers/standard_relayer_api_order_provider.ts:91](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/order_providers/standard_relayer_api_order_provider.ts#L91)*

Given a taker asset data string, return all availabled paired maker asset data strings.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`takerAssetData` | string | A string representing the taker asset data. |

**Returns:** *`Promise<string[]>`*

An array of asset data strings that can be purchased using takerAssetData.

___

###  getOrdersAsync

▸ **getOrdersAsync**(`orderProviderRequest`: [OrderProviderRequest](#interface-orderproviderrequest)): *`Promise<OrderProviderResponse>`*

*Defined in [asset-buyer/src/order_providers/standard_relayer_api_order_provider.ts:67](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/order_providers/standard_relayer_api_order_provider.ts#L67)*

Given an object that conforms to OrderProviderRequest, return the corresponding OrderProviderResponse that satisfies the request.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`orderProviderRequest` | [OrderProviderRequest](#interface-orderproviderrequest) | An instance of OrderProviderRequest. See type for more information. |

**Returns:** *`Promise<OrderProviderResponse>`*

An instance of OrderProviderResponse. See type for more information.

<hr />

# Enumeration: AssetBuyerError

Possible error messages thrown by an AssetBuyer instance or associated static methods.


##  Enumeration members

###  AssetUnavailable

• **AssetUnavailable**: = "ASSET_UNAVAILABLE"

*Defined in [asset-buyer/src/types.ts:122](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L122)*

___

###  InsufficientAssetLiquidity

• **InsufficientAssetLiquidity**: = "INSUFFICIENT_ASSET_LIQUIDITY"

*Defined in [asset-buyer/src/types.ts:118](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L118)*

___

###  InsufficientZrxLiquidity

• **InsufficientZrxLiquidity**: = "INSUFFICIENT_ZRX_LIQUIDITY"

*Defined in [asset-buyer/src/types.ts:119](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L119)*

___

###  InvalidOrderProviderResponse

• **InvalidOrderProviderResponse**: = "INVALID_ORDER_PROVIDER_RESPONSE"

*Defined in [asset-buyer/src/types.ts:121](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L121)*

___

###  NoAddressAvailable

• **NoAddressAvailable**: = "NO_ADDRESS_AVAILABLE"

*Defined in [asset-buyer/src/types.ts:120](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L120)*

___

###  NoEtherTokenContractFound

• **NoEtherTokenContractFound**: = "NO_ETHER_TOKEN_CONTRACT_FOUND"

*Defined in [asset-buyer/src/types.ts:115](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L115)*

___

###  NoZrxTokenContractFound

• **NoZrxTokenContractFound**: = "NO_ZRX_TOKEN_CONTRACT_FOUND"

*Defined in [asset-buyer/src/types.ts:116](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L116)*

___

###  SignatureRequestDenied

• **SignatureRequestDenied**: = "SIGNATURE_REQUEST_DENIED"

*Defined in [asset-buyer/src/types.ts:123](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L123)*

___

###  StandardRelayerApiError

• **StandardRelayerApiError**: = "STANDARD_RELAYER_API_ERROR"

*Defined in [asset-buyer/src/types.ts:117](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L117)*

___

###  TransactionValueTooLow

• **TransactionValueTooLow**: = "TRANSACTION_VALUE_TOO_LOW"

*Defined in [asset-buyer/src/types.ts:124](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L124)*

<hr />



































# Interface: BuyQuote

assetData: String that represents a specific asset (for more info: https://github.com/0xProject/0x-protocol-specification/blob/master/v2/v2-specification.md).
assetBuyAmount: The amount of asset to buy.
orders: An array of objects conforming to SignedOrder. These orders can be used to cover the requested assetBuyAmount plus slippage.
feeOrders: An array of objects conforming to SignedOrder. These orders can be used to cover the fees for the orders param above.
feePercentage: Optional affiliate fee percentage used to calculate the eth amounts above.
bestCaseQuoteInfo: Info about the best case price for the asset.
worstCaseQuoteInfo: Info about the worst case price for the asset.


##   Properties

###  assetBuyAmount

• **assetBuyAmount**: *`BigNumber`*

*Defined in [asset-buyer/src/types.ts:48](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L48)*

___

###  assetData

• **assetData**: *string*

*Defined in [asset-buyer/src/types.ts:47](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L47)*

___

###  bestCaseQuoteInfo

• **bestCaseQuoteInfo**: *[BuyQuoteInfo](#class-buyquoteinfo)*

*Defined in [asset-buyer/src/types.ts:52](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L52)*

___

###  feeOrders

• **feeOrders**: *`SignedOrder`[]*

*Defined in [asset-buyer/src/types.ts:50](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L50)*

___

### `Optional` feePercentage

• **feePercentage**? : *undefined | number*

*Defined in [asset-buyer/src/types.ts:51](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L51)*

___

###  orders

• **orders**: *`SignedOrder`[]*

*Defined in [asset-buyer/src/types.ts:49](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L49)*

___

###  worstCaseQuoteInfo

• **worstCaseQuoteInfo**: *[BuyQuoteInfo](#class-buyquoteinfo)*

*Defined in [asset-buyer/src/types.ts:53](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L53)*

<hr />

# Interface: BuyQuoteExecutionOpts

ethAmount: The desired amount of eth to spend. Defaults to buyQuote.worstCaseQuoteInfo.totalEthAmount.
takerAddress: The address to perform the buy. Defaults to the first available address from the provider.
gasLimit: The amount of gas to send with a transaction (in Gwei). Defaults to an eth_estimateGas rpc call.
gasPrice: Gas price in Wei to use for a transaction
feeRecipient: The address where affiliate fees are sent. Defaults to null address (0x000...000).


##   Properties

### `Optional` ethAmount

• **ethAmount**? : *`BigNumber`*

*Defined in [asset-buyer/src/types.ts:93](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L93)*

___

###  feeRecipient

• **feeRecipient**: *string*

*Defined in [asset-buyer/src/types.ts:97](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L97)*

___

### `Optional` gasLimit

• **gasLimit**? : *undefined | number*

*Defined in [asset-buyer/src/types.ts:95](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L95)*

___

### `Optional` gasPrice

• **gasPrice**? : *`BigNumber`*

*Defined in [asset-buyer/src/types.ts:96](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L96)*

___

### `Optional` takerAddress

• **takerAddress**? : *undefined | string*

*Defined in [asset-buyer/src/types.ts:94](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L94)*

<hr />

# Interface: BuyQuoteInfo

assetEthAmount: The amount of eth required to pay for the requested asset.
feeEthAmount: The amount of eth required to pay the affiliate fee.
totalEthAmount: The total amount of eth required to complete the buy (filling orders, feeOrders, and paying affiliate fee).


##   Properties

###  assetEthAmount

• **assetEthAmount**: *`BigNumber`*

*Defined in [asset-buyer/src/types.ts:62](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L62)*

___

###  feeEthAmount

• **feeEthAmount**: *`BigNumber`*

*Defined in [asset-buyer/src/types.ts:63](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L63)*

___

###  totalEthAmount

• **totalEthAmount**: *`BigNumber`*

*Defined in [asset-buyer/src/types.ts:64](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L64)*

<hr />

# Interface: BuyQuoteRequestOpts

feePercentage: The affiliate fee percentage. Defaults to 0.
shouldForceOrderRefresh: If set to true, new orders and state will be fetched instead of waiting for the next orderRefreshIntervalMs. Defaults to false.
slippagePercentage: The percentage buffer to add to account for slippage. Affects max ETH price estimates. Defaults to 0.2 (20%).


##   Properties

###  feePercentage

• **feePercentage**: *number*

*Defined in [asset-buyer/src/types.ts:73](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L73)*

___

###  shouldForceOrderRefresh

• **shouldForceOrderRefresh**: *boolean*

*Defined in [asset-buyer/src/types.ts:74](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L74)*

___

###  slippagePercentage

• **slippagePercentage**: *number*

*Defined in [asset-buyer/src/types.ts:75](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L75)*

<hr />

# Interface: LiquidityForAssetData

Represents available liquidity for a given assetData


##   Properties

###  ethValueAvailableInWei

• **ethValueAvailableInWei**: *`BigNumber`*

*Defined in [asset-buyer/src/types.ts:141](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L141)*

___

###  tokensAvailableInBaseUnits

• **tokensAvailableInBaseUnits**: *`BigNumber`*

*Defined in [asset-buyer/src/types.ts:140](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L140)*

<hr />









# Interface: SignedOrderWithRemainingFillableMakerAssetAmount

A normal SignedOrder with one extra optional property `remainingFillableMakerAssetAmount`
remainingFillableMakerAssetAmount: The amount of the makerAsset that is available to be filled


##   Properties

###  chainId

• **chainId**: *number*



Defined in types/lib/index.d.ts:4

___

###  exchangeAddress

• **exchangeAddress**: *string*



Defined in types/lib/index.d.ts:5

___

###  expirationTimeSeconds

• **expirationTimeSeconds**: *`BigNumber`*



Defined in types/lib/index.d.ts:14

___

###  feeRecipientAddress

• **feeRecipientAddress**: *string*



Defined in types/lib/index.d.ts:8

___

###  makerAddress

• **makerAddress**: *string*



Defined in types/lib/index.d.ts:6

___

###  makerAssetAmount

• **makerAssetAmount**: *`BigNumber`*



Defined in types/lib/index.d.ts:10

___

###  makerAssetData

• **makerAssetData**: *string*



Defined in types/lib/index.d.ts:16

___

###  makerFee

• **makerFee**: *`BigNumber`*



Defined in types/lib/index.d.ts:12

___

###  makerFeeAssetData

• **makerFeeAssetData**: *string*



Defined in types/lib/index.d.ts:18

___

### `Optional` remainingFillableMakerAssetAmount

• **remainingFillableMakerAssetAmount**? : *`BigNumber`*

*Defined in [asset-buyer/src/types.ts:26](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L26)*

___

###  salt

• **salt**: *`BigNumber`*



Defined in types/lib/index.d.ts:15

___

###  senderAddress

• **senderAddress**: *string*



Defined in types/lib/index.d.ts:9

___

###  signature

• **signature**: *string*



Defined in types/lib/index.d.ts:22

___

###  takerAddress

• **takerAddress**: *string*



Defined in types/lib/index.d.ts:7

___

###  takerAssetAmount

• **takerAssetAmount**: *`BigNumber`*



Defined in types/lib/index.d.ts:11

___

###  takerAssetData

• **takerAssetData**: *string*



Defined in types/lib/index.d.ts:17

___

###  takerFee

• **takerFee**: *`BigNumber`*



Defined in types/lib/index.d.ts:13

___

###  takerFeeAssetData

• **takerFeeAssetData**: *string*



Defined in types/lib/index.d.ts:19

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



<hr /> 




##  Type aliases

###  LiquidityRequestOpts

Ƭ **LiquidityRequestOpts**: *`Pick<BuyQuoteRequestOpts, "shouldForceOrderRefresh">`*

*Defined in [asset-buyer/src/types.ts:83](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/asset-buyer/src/types.ts#L83)*

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




##  Type aliases

























<hr />
