# Class: AbstractBalanceAndProxyAllowanceFetcher

An abstract class to be implemented in order to use OrderStateUtils. The class that
implements this interface must be capable of fetching the balance and proxyAllowance
for an Ethereum address and assetData


##   Methods

### `Abstract` getBalanceAsync

▸ **getBalanceAsync**(`assetData`: string, `userAddress`: string): *`Promise<BigNumber>`*

*Defined in [order-utils/src/abstract/abstract_balance_and_proxy_allowance_fetcher.ts:15](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/abstract/abstract_balance_and_proxy_allowance_fetcher.ts#L15)*

Get balance of assetData for userAddress

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`assetData` | string | AssetData for which to fetch the balance |
`userAddress` | string | Ethereum address for which to fetch the balance |

**Returns:** *`Promise<BigNumber>`*

Balance amount in base units

___

### `Abstract` getProxyAllowanceAsync

▸ **getProxyAllowanceAsync**(`assetData`: string, `userAddress`: string): *`Promise<BigNumber>`*

*Defined in [order-utils/src/abstract/abstract_balance_and_proxy_allowance_fetcher.ts:22](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/abstract/abstract_balance_and_proxy_allowance_fetcher.ts#L22)*

Get the 0x asset proxy allowance of assetData for userAddress

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`assetData` | string | AssetData for which to fetch the allowance |
`userAddress` | string | Ethereum address for which to fetch the allowance |

**Returns:** *`Promise<BigNumber>`*

Allowance amount in base units

<hr />

# Class: AbstractBalanceAndProxyAllowanceLazyStore


##  Implemented by

* [BalanceAndProxyAllowanceLazyStore](#class-balanceandproxyallowancelazystore)


##  Methods

### `Abstract` deleteAll

▸ **deleteAll**(): *void*

*Defined in [order-utils/src/abstract/abstract_balance_and_proxy_allowance_lazy_store.ts:10](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/abstract/abstract_balance_and_proxy_allowance_lazy_store.ts#L10)*

**Returns:** *void*

___

### `Abstract` deleteBalance

▸ **deleteBalance**(`assetData`: string, `userAddress`: string): *void*

*Defined in [order-utils/src/abstract/abstract_balance_and_proxy_allowance_lazy_store.ts:7](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/abstract/abstract_balance_and_proxy_allowance_lazy_store.ts#L7)*

**Parameters:**

Name | Type |
------ | ------ |
`assetData` | string |
`userAddress` | string |

**Returns:** *void*

___

### `Abstract` deleteProxyAllowance

▸ **deleteProxyAllowance**(`assetData`: string, `userAddress`: string): *void*

*Defined in [order-utils/src/abstract/abstract_balance_and_proxy_allowance_lazy_store.ts:9](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/abstract/abstract_balance_and_proxy_allowance_lazy_store.ts#L9)*

**Parameters:**

Name | Type |
------ | ------ |
`assetData` | string |
`userAddress` | string |

**Returns:** *void*

___

### `Abstract` getBalanceAsync

▸ **getBalanceAsync**(`assetData`: string, `userAddress`: string): *`Promise<BigNumber>`*

*Defined in [order-utils/src/abstract/abstract_balance_and_proxy_allowance_lazy_store.ts:4](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/abstract/abstract_balance_and_proxy_allowance_lazy_store.ts#L4)*

**Parameters:**

Name | Type |
------ | ------ |
`assetData` | string |
`userAddress` | string |

**Returns:** *`Promise<BigNumber>`*

___

### `Abstract` getProxyAllowanceAsync

▸ **getProxyAllowanceAsync**(`assetData`: string, `userAddress`: string): *`Promise<BigNumber>`*

*Defined in [order-utils/src/abstract/abstract_balance_and_proxy_allowance_lazy_store.ts:5](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/abstract/abstract_balance_and_proxy_allowance_lazy_store.ts#L5)*

**Parameters:**

Name | Type |
------ | ------ |
`assetData` | string |
`userAddress` | string |

**Returns:** *`Promise<BigNumber>`*

___

### `Abstract` setBalance

▸ **setBalance**(`assetData`: string, `userAddress`: string, `balance`: `BigNumber`): *void*

*Defined in [order-utils/src/abstract/abstract_balance_and_proxy_allowance_lazy_store.ts:6](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/abstract/abstract_balance_and_proxy_allowance_lazy_store.ts#L6)*

**Parameters:**

Name | Type |
------ | ------ |
`assetData` | string |
`userAddress` | string |
`balance` | `BigNumber` |

**Returns:** *void*

___

### `Abstract` setProxyAllowance

▸ **setProxyAllowance**(`assetData`: string, `userAddress`: string, `proxyAllowance`: `BigNumber`): *void*

*Defined in [order-utils/src/abstract/abstract_balance_and_proxy_allowance_lazy_store.ts:8](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/abstract/abstract_balance_and_proxy_allowance_lazy_store.ts#L8)*

**Parameters:**

Name | Type |
------ | ------ |
`assetData` | string |
`userAddress` | string |
`proxyAllowance` | `BigNumber` |

**Returns:** *void*

<hr />

# Class: AbstractOrderFilledCancelledFetcher

An abstract class to be implemented in order to use OrderStateUtils. The class that
implements this interface must be capable of fetching the amount filled of an order
and whether it's been cancelled.


##   Methods

### `Abstract` getFilledTakerAmountAsync

▸ **getFilledTakerAmountAsync**(`orderHash`: string): *`Promise<BigNumber>`*

*Defined in [order-utils/src/abstract/abstract_order_filled_cancelled_fetcher.ts:15](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/abstract/abstract_order_filled_cancelled_fetcher.ts#L15)*

Get the amount of the order's takerToken amount already filled

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`orderHash` | string | OrderHash of order we are interested in |

**Returns:** *`Promise<BigNumber>`*

FilledTakerAmount

___

### `Abstract` isOrderCancelledAsync

▸ **isOrderCancelledAsync**(`signedOrder`: `SignedOrder`): *`Promise<boolean>`*

*Defined in [order-utils/src/abstract/abstract_order_filled_cancelled_fetcher.ts:21](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/abstract/abstract_order_filled_cancelled_fetcher.ts#L21)*

Whether an order is cancelled

**Parameters:**

Name | Type |
------ | ------ |
`signedOrder` | `SignedOrder` |

**Returns:** *`Promise<boolean>`*

Whether or not the order is cancelled

<hr />

# Class: AbstractOrderFilledCancelledLazyStore


##  Implemented by

* [OrderFilledCancelledLazyStore](#class-orderfilledcancelledlazystore)


##  Methods

### `Abstract` deleteAll

▸ **deleteAll**(): *void*

*Defined in [order-utils/src/abstract/abstract_order_filled_cancelled_lazy_store.ts:11](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/abstract/abstract_order_filled_cancelled_lazy_store.ts#L11)*

**Returns:** *void*

___

### `Abstract` deleteFilledTakerAmount

▸ **deleteFilledTakerAmount**(`orderHash`: string): *void*

*Defined in [order-utils/src/abstract/abstract_order_filled_cancelled_lazy_store.ts:8](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/abstract/abstract_order_filled_cancelled_lazy_store.ts#L8)*

**Parameters:**

Name | Type |
------ | ------ |
`orderHash` | string |

**Returns:** *void*

___

### `Abstract` deleteIsCancelled

▸ **deleteIsCancelled**(`orderHash`: string): *void*

*Defined in [order-utils/src/abstract/abstract_order_filled_cancelled_lazy_store.ts:10](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/abstract/abstract_order_filled_cancelled_lazy_store.ts#L10)*

**Parameters:**

Name | Type |
------ | ------ |
`orderHash` | string |

**Returns:** *void*

___

### `Abstract` getFilledTakerAmountAsync

▸ **getFilledTakerAmountAsync**(`orderHash`: string): *`Promise<BigNumber>`*

*Defined in [order-utils/src/abstract/abstract_order_filled_cancelled_lazy_store.ts:5](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/abstract/abstract_order_filled_cancelled_lazy_store.ts#L5)*

**Parameters:**

Name | Type |
------ | ------ |
`orderHash` | string |

**Returns:** *`Promise<BigNumber>`*

___

### `Abstract` getIsCancelledAsync

▸ **getIsCancelledAsync**(`signedOrder`: `SignedOrder`): *`Promise<boolean>`*

*Defined in [order-utils/src/abstract/abstract_order_filled_cancelled_lazy_store.ts:6](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/abstract/abstract_order_filled_cancelled_lazy_store.ts#L6)*

**Parameters:**

Name | Type |
------ | ------ |
`signedOrder` | `SignedOrder` |

**Returns:** *`Promise<boolean>`*

___

### `Abstract` setFilledTakerAmount

▸ **setFilledTakerAmount**(`orderHash`: string, `balance`: `BigNumber`): *void*

*Defined in [order-utils/src/abstract/abstract_order_filled_cancelled_lazy_store.ts:7](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/abstract/abstract_order_filled_cancelled_lazy_store.ts#L7)*

**Parameters:**

Name | Type |
------ | ------ |
`orderHash` | string |
`balance` | `BigNumber` |

**Returns:** *void*

___

### `Abstract` setIsCancelled

▸ **setIsCancelled**(`orderHash`: string, `isCancelled`: boolean): *void*

*Defined in [order-utils/src/abstract/abstract_order_filled_cancelled_lazy_store.ts:9](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/abstract/abstract_order_filled_cancelled_lazy_store.ts#L9)*

**Parameters:**

Name | Type |
------ | ------ |
`orderHash` | string |
`isCancelled` | boolean |

**Returns:** *void*

<hr />







































# Class: ExchangeTransferSimulator

An exchange transfer simulator which simulates asset transfers exactly how the
0x exchange contract would do them.


##   Constructors



\+ **new ExchangeTransferSimulator**(`store`: [AbstractBalanceAndProxyAllowanceLazyStore](_order_utils_src_abstract_abstract_balance_and_proxy_allowance_lazy_store_.abstractbalanceandproxyallowancelazystore.md)): *[ExchangeTransferSimulator](#class-exchangetransfersimulator)*

*Defined in [order-utils/src/exchange_transfer_simulator.ts:50](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/exchange_transfer_simulator.ts#L50)*

Instantiate a ExchangeTransferSimulator

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`store` | [AbstractBalanceAndProxyAllowanceLazyStore](#class-abstractbalanceandproxyallowancelazystore) | A class that implements AbstractBalanceAndProxyAllowanceLazyStore |

**Returns:** *[ExchangeTransferSimulator](#class-exchangetransfersimulator)*

an instance of ExchangeTransferSimulator

## Methods

###  transferFromAsync

▸ **transferFromAsync**(`assetData`: string, `from`: string, `to`: string, `amountInBaseUnits`: `BigNumber`, `tradeSide`: [TradeSide](#enumeration-tradeside), `transferType`: [TransferType](#enumeration-transfertype)): *`Promise<void>`*

*Defined in [order-utils/src/exchange_transfer_simulator.ts:70](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/exchange_transfer_simulator.ts#L70)*

Simulates transferFrom call performed by a proxy

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`assetData` | string | Data of the asset being transferred. Includes                           it's identifying information and assetType,                           e.g address for ERC20, address & tokenId for ERC721 |
`from` | string | Owner of the transferred tokens |
`to` | string | Recipient of the transferred tokens |
`amountInBaseUnits` | `BigNumber` | The amount of tokens being transferred |
`tradeSide` | [TradeSide](#enumeration-tradeside) | Is Maker/Taker transferring |
`transferType` | [TransferType](#enumeration-transfertype) | Is it a fee payment or a value transfer  |

**Returns:** *`Promise<void>`*

<hr />



























# Class: OrderStateUtils


##   Constructors



\+ **new OrderStateUtils**(`balanceAndProxyAllowanceFetcher`: [AbstractBalanceAndProxyAllowanceFetcher](_order_utils_src_abstract_abstract_balance_and_proxy_allowance_fetcher_.abstractbalanceandproxyallowancefetcher.md), `orderFilledCancelledFetcher`: [AbstractOrderFilledCancelledFetcher](_order_utils_src_abstract_abstract_order_filled_cancelled_fetcher_.abstractorderfilledcancelledfetcher.md)): *[OrderStateUtils](#class-orderstateutils)*

*Defined in [order-utils/src/order_state_utils.ts:98](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/order_state_utils.ts#L98)*

Instantiate OrderStateUtils

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`balanceAndProxyAllowanceFetcher` | [AbstractBalanceAndProxyAllowanceFetcher](#class-abstractbalanceandproxyallowancefetcher) | A class that is capable of fetching balances and proxyAllowances for Ethereum addresses. It must implement AbstractBalanceAndProxyAllowanceFetcher |
`orderFilledCancelledFetcher` | [AbstractOrderFilledCancelledFetcher](#class-abstractorderfilledcancelledfetcher) | A class that is capable of fetching whether an order is cancelled and how much of it has been filled. It must implement AbstractOrderFilledCancelledFetcher |

**Returns:** *[OrderStateUtils](#class-orderstateutils)*

Instance of OrderStateUtils

## Methods

###  getMaxFillableTakerAssetAmountAsync

▸ **getMaxFillableTakerAssetAmountAsync**(`signedOrder`: `SignedOrder`, `takerAddress`: string): *`Promise<BigNumber>`*

*Defined in [order-utils/src/order_state_utils.ts:192](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/order_state_utils.ts#L192)*

Get the max amount of the supplied order's takerAmount that could still be filled

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`signedOrder` | `SignedOrder` | Order of interest |
`takerAddress` | string | Hypothetical taker of the order |

**Returns:** *`Promise<BigNumber>`*

fillableTakerAssetAmount

___

###  getOpenOrderRelevantStateAsync

▸ **getOpenOrderRelevantStateAsync**(`signedOrder`: `SignedOrder`): *`Promise<OrderRelevantState>`*

*Defined in [order-utils/src/order_state_utils.ts:162](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/order_state_utils.ts#L162)*

Get state relevant to an order (i.e makerBalance, makerAllowance, filledTakerAssetAmount, etc...

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`signedOrder` | `SignedOrder` | Order of interest |

**Returns:** *`Promise<OrderRelevantState>`*

An instance of OrderRelevantState

___

###  getOpenOrderStateAsync

▸ **getOpenOrderStateAsync**(`signedOrder`: `SignedOrder`, `transactionHash?`: undefined | string): *`Promise<OrderState>`*

*Defined in [order-utils/src/order_state_utils.ts:122](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/order_state_utils.ts#L122)*

Get the orderState for an "open" order (i.e where takerAddress=NULL_ADDRESS)
This method will only check the maker's balance/allowance to calculate the
OrderState.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`signedOrder` | `SignedOrder` | The order of interest |
`transactionHash?` | undefined \| string | - |

**Returns:** *`Promise<OrderState>`*

State relevant to the signedOrder, as well as whether the signedOrder is "valid".
Validity is defined as a non-zero amount of the order can still be filled.

<hr />

# Class: OrderValidationUtils

A utility class for validating orders


##   Constructors



\+ **new OrderValidationUtils**(`orderFilledCancelledFetcher`: [AbstractOrderFilledCancelledFetcher](_order_utils_src_abstract_abstract_order_filled_cancelled_fetcher_.abstractorderfilledcancelledfetcher.md), `supportedProvider`: [SupportedProvider](#supportedprovider)): *[OrderValidationUtils](#class-ordervalidationutils)*

*Defined in [order-utils/src/order_validation_utils.ts:113](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/order_validation_utils.ts#L113)*

Instantiate OrderValidationUtils

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`orderFilledCancelledFetcher` | [AbstractOrderFilledCancelledFetcher](#class-abstractorderfilledcancelledfetcher) | A module that implements the AbstractOrderFilledCancelledFetcher |
`supportedProvider` | [SupportedProvider](#supportedprovider) | Web3 provider to use for JSON RPC calls |

**Returns:** *[OrderValidationUtils](#class-ordervalidationutils)*

An instance of OrderValidationUtils

## Methods

###  validateFillOrderThrowIfInvalidAsync

▸ **validateFillOrderThrowIfInvalidAsync**(`exchangeTradeEmulator`: [ExchangeTransferSimulator](#class-exchangetransfersimulator), `signedOrder`: `SignedOrder`, `fillTakerAssetAmount`: `BigNumber`, `takerAddress`: string): *`Promise<BigNumber>`*

*Defined in [order-utils/src/order_validation_utils.ts:135](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/order_validation_utils.ts#L135)*

Validate a call to FillOrder and throw if it wouldn't succeed

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`exchangeTradeEmulator` | [ExchangeTransferSimulator](#class-exchangetransfersimulator) | ExchangeTradeEmulator to use |
`signedOrder` | `SignedOrder` | SignedOrder of interest |
`fillTakerAssetAmount` | `BigNumber` | Amount we'd like to fill the order for |
`takerAddress` | string | The taker of the order  |

**Returns:** *`Promise<BigNumber>`*

___

### `Static` isRoundingErrorFloor

▸ **isRoundingErrorFloor**(`numerator`: `BigNumber`, `denominator`: `BigNumber`, `target`: `BigNumber`): *boolean*

*Defined in [order-utils/src/order_validation_utils.ts:27](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/order_validation_utils.ts#L27)*

A TypeScript implementation mirroring the implementation of isRoundingError in the
Exchange smart contract

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`numerator` | `BigNumber` | Numerator value. When used to check an order, pass in `takerAssetFilledAmount` |
`denominator` | `BigNumber` | Denominator value.  When used to check an order, pass in `order.takerAssetAmount` |
`target` | `BigNumber` | Target value. When used to check an order, pass in `order.makerAssetAmount`  |

**Returns:** *boolean*

___

### `Static` validateFillOrderBalancesAllowancesThrowIfInvalidAsync

▸ **validateFillOrderBalancesAllowancesThrowIfInvalidAsync**(`exchangeTradeEmulator`: [ExchangeTransferSimulator](#class-exchangetransfersimulator), `signedOrder`: `SignedOrder`, `fillTakerAssetAmount`: `BigNumber`, `senderAddress`: string): *`Promise<void>`*

*Defined in [order-utils/src/order_validation_utils.ts:53](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/order_validation_utils.ts#L53)*

Validate that the maker & taker have sufficient balances/allowances
to fill the supplied order to the fillTakerAssetAmount amount

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`exchangeTradeEmulator` | [ExchangeTransferSimulator](#class-exchangetransfersimulator) | ExchangeTradeEmulator to use |
`signedOrder` | `SignedOrder` | SignedOrder to test |
`fillTakerAssetAmount` | `BigNumber` | Amount of takerAsset to fill the signedOrder |
`senderAddress` | string | Sender of the fillOrder tx  |

**Returns:** *`Promise<void>`*

<hr />



































# Class: BalanceAndProxyAllowanceLazyStore

Copy on read store for balances/proxyAllowances of tokens/accounts


##  Implements

* [AbstractBalanceAndProxyAllowanceLazyStore](#class-abstractbalanceandproxyallowancelazystore)


##  Constructors



\+ **new BalanceAndProxyAllowanceLazyStore**(`balanceAndProxyAllowanceFetcher`: [AbstractBalanceAndProxyAllowanceFetcher](_order_utils_src_abstract_abstract_balance_and_proxy_allowance_fetcher_.abstractbalanceandproxyallowancefetcher.md)): *[BalanceAndProxyAllowanceLazyStore](#class-balanceandproxyallowancelazystore)*

*Defined in [order-utils/src/store/balance_and_proxy_allowance_lazy_store.ts:23](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/store/balance_and_proxy_allowance_lazy_store.ts#L23)*

Instantiates a BalanceAndProxyAllowanceLazyStore

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`balanceAndProxyAllowanceFetcher` | [AbstractBalanceAndProxyAllowanceFetcher](#class-abstractbalanceandproxyallowancefetcher) | Class the implements the AbstractBalanceAndProxyAllowanceFetcher |

**Returns:** *[BalanceAndProxyAllowanceLazyStore](#class-balanceandproxyallowancelazystore)*

Instance of BalanceAndProxyAllowanceLazyStore

## Methods

###  deleteAll

▸ **deleteAll**(): *void*

*Defined in [order-utils/src/store/balance_and_proxy_allowance_lazy_store.ts:136](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/store/balance_and_proxy_allowance_lazy_store.ts#L136)*

Delete all balances & allowances

**Returns:** *void*

___

###  deleteAllERC721ProxyAllowance

▸ **deleteAllERC721ProxyAllowance**(`tokenAddress`: string, `userAddress`: string): *void*

*Defined in [order-utils/src/store/balance_and_proxy_allowance_lazy_store.ts:119](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/store/balance_and_proxy_allowance_lazy_store.ts#L119)*

Clear all ERC721 0x proxy allowances a user has on all items of a specific ERC721 contract

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`tokenAddress` | string | ERc721 token address |
`userAddress` | string | Owner Ethereum address  |

**Returns:** *void*

___

###  deleteBalance

▸ **deleteBalance**(`assetData`: string, `userAddress`: string): *void*

*Defined in [order-utils/src/store/balance_and_proxy_allowance_lazy_store.ts:63](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/store/balance_and_proxy_allowance_lazy_store.ts#L63)*

Clear the balance of an asset for a user

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`assetData` | string | AssetData of interest |
`userAddress` | string | Ethereum address of interest  |

**Returns:** *void*

___

###  deleteProxyAllowance

▸ **deleteProxyAllowance**(`assetData`: string, `userAddress`: string): *void*

*Defined in [order-utils/src/store/balance_and_proxy_allowance_lazy_store.ts:106](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/store/balance_and_proxy_allowance_lazy_store.ts#L106)*

Clear the 0x asset proxy allowance

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`assetData` | string | AssetData of interest |
`userAddress` | string | Ethereum address of interest  |

**Returns:** *void*

___

###  getBalanceAsync

▸ **getBalanceAsync**(`assetData`: string, `userAddress`: string): *`Promise<BigNumber>`*

*Defined in [order-utils/src/store/balance_and_proxy_allowance_lazy_store.ts:39](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/store/balance_and_proxy_allowance_lazy_store.ts#L39)*

Get a users balance of an asset

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`assetData` | string | AssetData of interest |
`userAddress` | string | Ethereum address of interest  |

**Returns:** *`Promise<BigNumber>`*

___

###  getProxyAllowanceAsync

▸ **getProxyAllowanceAsync**(`assetData`: string, `userAddress`: string): *`Promise<BigNumber>`*

*Defined in [order-utils/src/store/balance_and_proxy_allowance_lazy_store.ts:76](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/store/balance_and_proxy_allowance_lazy_store.ts#L76)*

Get the 0x asset proxy allowance

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`assetData` | string | AssetData of interest |
`userAddress` | string | Ethereum address of interest  |

**Returns:** *`Promise<BigNumber>`*

___

###  setBalance

▸ **setBalance**(`assetData`: string, `userAddress`: string, `balance`: `BigNumber`): *void*

*Defined in [order-utils/src/store/balance_and_proxy_allowance_lazy_store.ts:52](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/store/balance_and_proxy_allowance_lazy_store.ts#L52)*

Set the balance of an asset for a user

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`assetData` | string | AssetData of interest |
`userAddress` | string | Ethereum address of interest  |
`balance` | `BigNumber` | - |

**Returns:** *void*

___

###  setProxyAllowance

▸ **setProxyAllowance**(`assetData`: string, `userAddress`: string, `proxyAllowance`: `BigNumber`): *void*

*Defined in [order-utils/src/store/balance_and_proxy_allowance_lazy_store.ts:95](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/store/balance_and_proxy_allowance_lazy_store.ts#L95)*

Set the 0x asset proxy allowance

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`assetData` | string | AssetData of interest |
`userAddress` | string | Ethereum address of interest  |
`proxyAllowance` | `BigNumber` | - |

**Returns:** *void*

<hr />

# Class: OrderFilledCancelledLazyStore

Copy on read store for balances/proxyAllowances of tokens/accounts


##  Implements

* [AbstractOrderFilledCancelledLazyStore](#class-abstractorderfilledcancelledlazystore)


##  Constructors



\+ **new OrderFilledCancelledLazyStore**(`orderFilledCancelledFetcher`: [AbstractOrderFilledCancelledFetcher](_order_utils_src_abstract_abstract_order_filled_cancelled_fetcher_.abstractorderfilledcancelledfetcher.md)): *[OrderFilledCancelledLazyStore](#class-orderfilledcancelledlazystore)*

*Defined in [order-utils/src/store/order_filled_cancelled_lazy_store.ts:19](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/store/order_filled_cancelled_lazy_store.ts#L19)*

Instantiate a OrderFilledCancelledLazyStore

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`orderFilledCancelledFetcher` | [AbstractOrderFilledCancelledFetcher](#class-abstractorderfilledcancelledfetcher) | Class instance that implements the AbstractOrderFilledCancelledFetcher |

**Returns:** *[OrderFilledCancelledLazyStore](#class-orderfilledcancelledlazystore)*

An instance of OrderFilledCancelledLazyStore

## Methods

###  deleteAll

▸ **deleteAll**(): *void*

*Defined in [order-utils/src/store/order_filled_cancelled_lazy_store.ts:90](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/store/order_filled_cancelled_lazy_store.ts#L90)*

Clear all filled/cancelled state

**Returns:** *void*

___

###  deleteAllFilled

▸ **deleteAllFilled**(): *void*

*Defined in [order-utils/src/store/order_filled_cancelled_lazy_store.ts:103](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/store/order_filled_cancelled_lazy_store.ts#L103)*

Clear all filled state

**Returns:** *void*

___

###  deleteAllIsCancelled

▸ **deleteAllIsCancelled**(): *void*

*Defined in [order-utils/src/store/order_filled_cancelled_lazy_store.ts:97](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/store/order_filled_cancelled_lazy_store.ts#L97)*

Clear all cancelled state

**Returns:** *void*

___

###  deleteFilledTakerAmount

▸ **deleteFilledTakerAmount**(`orderHash`: string): *void*

*Defined in [order-utils/src/store/order_filled_cancelled_lazy_store.ts:55](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/store/order_filled_cancelled_lazy_store.ts#L55)*

Clear the filledTakerAssetAmount of an order

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`orderHash` | string | OrderHash from order of interest  |

**Returns:** *void*

___

###  deleteIsCancelled

▸ **deleteIsCancelled**(`orderHash`: string): *void*

*Defined in [order-utils/src/store/order_filled_cancelled_lazy_store.ts:84](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/store/order_filled_cancelled_lazy_store.ts#L84)*

Clear whether the order has been cancelled if already set

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`orderHash` | string | OrderHash from order of interest  |

**Returns:** *void*

___

###  getFilledTakerAmountAsync

▸ **getFilledTakerAmountAsync**(`orderHash`: string): *`Promise<BigNumber>`*

*Defined in [order-utils/src/store/order_filled_cancelled_lazy_store.ts:35](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/store/order_filled_cancelled_lazy_store.ts#L35)*

Get the filledTakerAssetAmount of an order

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`orderHash` | string | OrderHash from order of interest |

**Returns:** *`Promise<BigNumber>`*

filledTakerAssetAmount

___

###  getIsCancelledAsync

▸ **getIsCancelledAsync**(`signedOrder`: `SignedOrder`): *`Promise<boolean>`*

*Defined in [order-utils/src/store/order_filled_cancelled_lazy_store.ts:63](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/store/order_filled_cancelled_lazy_store.ts#L63)*

Check if an order has been cancelled

**Parameters:**

Name | Type |
------ | ------ |
`signedOrder` | `SignedOrder` |

**Returns:** *`Promise<boolean>`*

Whether the order has been cancelled

___

###  setFilledTakerAmount

▸ **setFilledTakerAmount**(`orderHash`: string, `filledTakerAmount`: `BigNumber`): *void*

*Defined in [order-utils/src/store/order_filled_cancelled_lazy_store.ts:48](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/store/order_filled_cancelled_lazy_store.ts#L48)*

Set the filledTakerAssetAmount of an order

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`orderHash` | string | OrderHash from order of interest |
`filledTakerAmount` | `BigNumber` | Desired filledTakerAssetAmount  |

**Returns:** *void*

___

###  setIsCancelled

▸ **setIsCancelled**(`orderHash`: string, `isCancelled`: boolean): *void*

*Defined in [order-utils/src/store/order_filled_cancelled_lazy_store.ts:77](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/store/order_filled_cancelled_lazy_store.ts#L77)*

Set whether an order has been cancelled or not

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`orderHash` | string | OrderHash from order of interest |
`isCancelled` | boolean | Whether this order should be cancelled or not  |

**Returns:** *void*

<hr />



































# Enumeration: TradeSide


##  Enumeration members

###  Maker

• **Maker**: = "maker"

*Defined in [order-utils/src/types.ts:9](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/types.ts#L9)*

___

###  Taker

• **Taker**: = "taker"

*Defined in [order-utils/src/types.ts:10](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/types.ts#L10)*

<hr />

# Enumeration: TransferType


##  Enumeration members

###  Fee

• **Fee**: = "fee"

*Defined in [order-utils/src/types.ts:15](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/types.ts#L15)*

___

###  Trade

• **Trade**: = "trade"

*Defined in [order-utils/src/types.ts:14](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/types.ts#L14)*

<hr />

# Enumeration: TypedDataError


##  Enumeration members

###  InvalidMetamaskSigner

• **InvalidMetamaskSigner**: = "MetaMask provider must be wrapped in a MetamaskSubprovider (from the '@0x/subproviders' package) in order to work with this method."

*Defined in [order-utils/src/types.ts:5](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/types.ts#L5)*

___

###  InvalidSignature

• **InvalidSignature**: = "INVALID_SIGNATURE"

*Defined in [order-utils/src/types.ts:4](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/types.ts#L4)*

<hr />

# Enumeration: AssetProxyId


##  Enumeration members

###  ERC1155

• **ERC1155**: = "0xa7cb5fb7"

*Defined in [types/src/index.ts:166](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L166)*

___

###  ERC20

• **ERC20**: = "0xf47261b0"

*Defined in [types/src/index.ts:163](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L163)*

___

###  ERC20Bridge

• **ERC20Bridge**: = "0xdc1600f3"

*Defined in [types/src/index.ts:168](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L168)*

___

###  ERC721

• **ERC721**: = "0x02571792"

*Defined in [types/src/index.ts:164](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L164)*

___

###  MultiAsset

• **MultiAsset**: = "0x94cfcdd7"

*Defined in [types/src/index.ts:165](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L165)*

___

###  StaticCall

• **StaticCall**: = "0xc339d10a"

*Defined in [types/src/index.ts:167](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L167)*

<hr />

# Enumeration: ExchangeContractErrs

Errors originating from the 0x exchange contract


##  Enumeration members

###  BatchOrdersMustHaveAtLeastOneItem

• **BatchOrdersMustHaveAtLeastOneItem**: = "BATCH_ORDERS_MUST_HAVE_AT_LEAST_ONE_ITEM"

*Defined in [types/src/index.ts:98](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L98)*

___

###  BatchOrdersMustHaveSameExchangeAddress

• **BatchOrdersMustHaveSameExchangeAddress**: = "BATCH_ORDERS_MUST_HAVE_SAME_EXCHANGE_ADDRESS"

*Defined in [types/src/index.ts:97](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L97)*

___

###  FillBalanceAllowanceError

• **FillBalanceAllowanceError**: = "FILL_BALANCE_ALLOWANCE_ERROR"

*Defined in [types/src/index.ts:84](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L84)*

___

###  InsufficientMakerAllowance

• **InsufficientMakerAllowance**: = "INSUFFICIENT_MAKER_ALLOWANCE"

*Defined in [types/src/index.ts:88](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L88)*

___

###  InsufficientMakerBalance

• **InsufficientMakerBalance**: = "INSUFFICIENT_MAKER_BALANCE"

*Defined in [types/src/index.ts:87](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L87)*

___

###  InsufficientMakerFeeAllowance

• **InsufficientMakerFeeAllowance**: = "INSUFFICIENT_MAKER_FEE_ALLOWANCE"

*Defined in [types/src/index.ts:92](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L92)*

___

###  InsufficientMakerFeeBalance

• **InsufficientMakerFeeBalance**: = "INSUFFICIENT_MAKER_FEE_BALANCE"

*Defined in [types/src/index.ts:91](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L91)*

___

###  InsufficientRemainingFillAmount

• **InsufficientRemainingFillAmount**: = "INSUFFICIENT_REMAINING_FILL_AMOUNT"

*Defined in [types/src/index.ts:95](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L95)*

___

###  InsufficientTakerAllowance

• **InsufficientTakerAllowance**: = "INSUFFICIENT_TAKER_ALLOWANCE"

*Defined in [types/src/index.ts:86](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L86)*

___

###  InsufficientTakerBalance

• **InsufficientTakerBalance**: = "INSUFFICIENT_TAKER_BALANCE"

*Defined in [types/src/index.ts:85](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L85)*

___

###  InsufficientTakerFeeAllowance

• **InsufficientTakerFeeAllowance**: = "INSUFFICIENT_TAKER_FEE_ALLOWANCE"

*Defined in [types/src/index.ts:90](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L90)*

___

###  InsufficientTakerFeeBalance

• **InsufficientTakerFeeBalance**: = "INSUFFICIENT_TAKER_FEE_BALANCE"

*Defined in [types/src/index.ts:89](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L89)*

___

###  MultipleMakersInSingleCancelBatchDisallowed

• **MultipleMakersInSingleCancelBatchDisallowed**: = "MULTIPLE_MAKERS_IN_SINGLE_CANCEL_BATCH_DISALLOWED"

*Defined in [types/src/index.ts:94](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L94)*

___

###  MultipleTakerTokensInFillUpToDisallowed

• **MultipleTakerTokensInFillUpToDisallowed**: = "MULTIPLE_TAKER_TOKENS_IN_FILL_UP_TO_DISALLOWED"

*Defined in [types/src/index.ts:96](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L96)*

___

###  OrderCancelExpired

• **OrderCancelExpired**: = "ORDER_CANCEL_EXPIRED"

*Defined in [types/src/index.ts:79](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L79)*

___

###  OrderCancelled

• **OrderCancelled**: = "ORDER_CANCELLED"

*Defined in [types/src/index.ts:80](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L80)*

___

###  OrderFillAmountZero

• **OrderFillAmountZero**: = "ORDER_FILL_AMOUNT_ZERO"

*Defined in [types/src/index.ts:81](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L81)*

___

###  OrderFillExpired

• **OrderFillExpired**: = "ORDER_FILL_EXPIRED"

*Defined in [types/src/index.ts:78](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L78)*

___

###  OrderFillRoundingError

• **OrderFillRoundingError**: = "ORDER_FILL_ROUNDING_ERROR"

*Defined in [types/src/index.ts:83](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L83)*

___

###  OrderRemainingFillAmountZero

• **OrderRemainingFillAmountZero**: = "ORDER_REMAINING_FILL_AMOUNT_ZERO"

*Defined in [types/src/index.ts:82](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L82)*

___

###  TransactionSenderIsNotFillOrderTaker

• **TransactionSenderIsNotFillOrderTaker**: = "TRANSACTION_SENDER_IS_NOT_FILL_ORDER_TAKER"

*Defined in [types/src/index.ts:93](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L93)*

<hr />











# Enumeration: SignatureType


##  Enumeration members

###  EIP1271Wallet

• **EIP1271Wallet**:

*Defined in [types/src/index.ts:158](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L158)*

___

###  EIP712

• **EIP712**:

*Defined in [types/src/index.ts:153](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L153)*

___

###  EthSign

• **EthSign**:

*Defined in [types/src/index.ts:154](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L154)*

___

###  Illegal

• **Illegal**:

*Defined in [types/src/index.ts:151](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L151)*

___

###  Invalid

• **Invalid**:

*Defined in [types/src/index.ts:152](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L152)*

___

###  NSignatureTypes

• **NSignatureTypes**:

*Defined in [types/src/index.ts:159](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L159)*

___

###  PreSigned

• **PreSigned**:

*Defined in [types/src/index.ts:157](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L157)*

___

###  Validator

• **Validator**:

*Defined in [types/src/index.ts:156](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L156)*

___

###  Wallet

• **Wallet**:

*Defined in [types/src/index.ts:155](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L155)*

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



# Interface: FeeOrdersAndRemainingFeeAmount <**T**>

## Type parameters

▪ **T**


##   Properties

###  feeOrdersRemainingFillableMakerAssetAmounts

• **feeOrdersRemainingFillableMakerAssetAmounts**: *`BigNumber`[]*

*Defined in [order-utils/src/types.ts:78](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/types.ts#L78)*

___

###  remainingFeeAmount

• **remainingFeeAmount**: *`BigNumber`*

*Defined in [order-utils/src/types.ts:79](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/types.ts#L79)*

___

###  resultFeeOrders

• **resultFeeOrders**: *`T`[]*

*Defined in [order-utils/src/types.ts:77](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/types.ts#L77)*

<hr />

# Interface: FindFeeOrdersThatCoverFeesForTargetOrdersOpts

remainingFillableMakerAssetAmount: An array of BigNumbers corresponding to the `orders` parameter.
You can use `OrderStateUtils` `@0x/order-utils` to perform blockchain lookups for these values.
Defaults to `makerAssetAmount` values from the orders param.
remainingFillableFeeAmounts: An array of BigNumbers corresponding to the feeOrders parameter.
You can use OrderStateUtils @0x/order-utils to perform blockchain lookups for these values.
Defaults to `makerAssetAmount` values from the feeOrders param.
slippageBufferAmount: An additional amount of fee to be covered by the result in case of trade collisions or partial fills.
Defaults to 0


##   Properties

### `Optional` remainingFillableFeeAmounts

• **remainingFillableFeeAmounts**? : *`BigNumber`[]*

*Defined in [order-utils/src/types.ts:72](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/types.ts#L72)*

___

### `Optional` remainingFillableMakerAssetAmounts

• **remainingFillableMakerAssetAmounts**? : *`BigNumber`[]*

*Defined in [order-utils/src/types.ts:71](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/types.ts#L71)*

___

### `Optional` slippageBufferAmount

• **slippageBufferAmount**? : *`BigNumber`*

*Defined in [order-utils/src/types.ts:73](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/types.ts#L73)*

<hr />

# Interface: FindOrdersThatCoverMakerAssetFillAmountOpts

remainingFillableMakerAssetAmount: An array of BigNumbers corresponding to the `orders` parameter.
You can use `OrderStateUtils` `@0x/order-utils` to perform blockchain lookups for these values.
Defaults to `makerAssetAmount` values from the orders param.
slippageBufferAmount: An additional amount of makerAsset to be covered by the result in case of trade collisions or partial fills.
Defaults to 0


##   Properties

### `Optional` remainingFillableMakerAssetAmounts

• **remainingFillableMakerAssetAmounts**? : *`BigNumber`[]*

*Defined in [order-utils/src/types.ts:44](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/types.ts#L44)*

___

### `Optional` slippageBufferAmount

• **slippageBufferAmount**? : *`BigNumber`*

*Defined in [order-utils/src/types.ts:45](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/types.ts#L45)*

<hr />

# Interface: FindOrdersThatCoverTakerAssetFillAmountOpts

remainingFillableMakerAssetAmount: An array of BigNumbers corresponding to the `orders` parameter.
You can use `OrderStateUtils` `@0x/order-utils` to perform blockchain lookups for these values.
Defaults to `makerAssetAmount` values from the orders param.
slippageBufferAmount: An additional amount of makerAsset to be covered by the result in case of trade collisions or partial fills.
Defaults to 0


##   Properties

### `Optional` remainingFillableTakerAssetAmounts

• **remainingFillableTakerAssetAmounts**? : *`BigNumber`[]*

*Defined in [order-utils/src/types.ts:56](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/types.ts#L56)*

___

### `Optional` slippageBufferAmount

• **slippageBufferAmount**? : *`BigNumber`*

*Defined in [order-utils/src/types.ts:57](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/types.ts#L57)*

<hr />

# Interface: OrdersAndRemainingMakerFillAmount <**T**>

## Type parameters

▪ **T**


##   Properties

###  ordersRemainingFillableMakerAssetAmounts

• **ordersRemainingFillableMakerAssetAmounts**: *`BigNumber`[]*

*Defined in [order-utils/src/types.ts:84](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/types.ts#L84)*

___

###  remainingFillAmount

• **remainingFillAmount**: *`BigNumber`*

*Defined in [order-utils/src/types.ts:85](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/types.ts#L85)*

___

###  resultOrders

• **resultOrders**: *`T`[]*

*Defined in [order-utils/src/types.ts:83](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/types.ts#L83)*

<hr />

# Interface: OrdersAndRemainingTakerFillAmount <**T**>

## Type parameters

▪ **T**


##   Properties

###  ordersRemainingFillableTakerAssetAmounts

• **ordersRemainingFillableTakerAssetAmounts**: *`BigNumber`[]*

*Defined in [order-utils/src/types.ts:90](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/types.ts#L90)*

___

###  remainingFillAmount

• **remainingFillAmount**: *`BigNumber`*

*Defined in [order-utils/src/types.ts:91](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/types.ts#L91)*

___

###  resultOrders

• **resultOrders**: *`T`[]*

*Defined in [order-utils/src/types.ts:89](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/types.ts#L89)*

<hr />



























# Interface: DutchAuctionData


##   Properties

###  assetData

• **assetData**: *[AssetData](#assetdata)*

*Defined in [types/src/index.ts:219](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L219)*

___

###  beginAmount

• **beginAmount**: *`BigNumber`*

*Defined in [types/src/index.ts:221](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L221)*

___

###  beginTimeSeconds

• **beginTimeSeconds**: *`BigNumber`*

*Defined in [types/src/index.ts:220](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L220)*

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

# Interface: EIP712DomainWithDefaultSchema


##   Properties

###  chainId

• **chainId**: *number*

*Defined in [types/src/index.ts:802](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L802)*

___

### `Optional` name

• **name**? : *undefined | string*

*Defined in [types/src/index.ts:800](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L800)*

___

###  verifyingContract

• **verifyingContract**: *string*

*Defined in [types/src/index.ts:803](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L803)*

___

### `Optional` version

• **version**? : *undefined | string*

*Defined in [types/src/index.ts:801](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L801)*

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

# Interface: ERC1155AssetData


##   Properties

###  assetProxyId

• **assetProxyId**: *string*

*Defined in [types/src/index.ts:183](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L183)*

___

###  callbackData

• **callbackData**: *string*

*Defined in [types/src/index.ts:187](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L187)*

___

###  tokenAddress

• **tokenAddress**: *string*

*Defined in [types/src/index.ts:184](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L184)*

___

###  tokenIds

• **tokenIds**: *`BigNumber`[]*

*Defined in [types/src/index.ts:185](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L185)*

___

###  tokenValues

• **tokenValues**: *`BigNumber`[]*

*Defined in [types/src/index.ts:186](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L186)*

<hr />



# Interface: ERC20AssetData


##   Properties

###  assetProxyId

• **assetProxyId**: *string*

*Defined in [types/src/index.ts:172](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L172)*

___

###  tokenAddress

• **tokenAddress**: *string*

*Defined in [types/src/index.ts:173](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L173)*

<hr />

# Interface: ERC721AssetData


##   Properties

###  assetProxyId

• **assetProxyId**: *string*

*Defined in [types/src/index.ts:177](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L177)*

___

###  tokenAddress

• **tokenAddress**: *string*

*Defined in [types/src/index.ts:178](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L178)*

___

###  tokenId

• **tokenId**: *`BigNumber`*

*Defined in [types/src/index.ts:179](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L179)*

<hr />





 











# Interface: MultiAssetData


##   Properties

###  amounts

• **amounts**: *`BigNumber`[]*

*Defined in [types/src/index.ts:208](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L208)*

___

###  assetProxyId

• **assetProxyId**: *string*

*Defined in [types/src/index.ts:207](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L207)*

___

###  nestedAssetData

• **nestedAssetData**: *string[]*

*Defined in [types/src/index.ts:209](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L209)*

<hr />

# Interface: MultiAssetDataWithRecursiveDecoding


##   Properties

###  amounts

• **amounts**: *`BigNumber`[]*

*Defined in [types/src/index.ts:214](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L214)*

___

###  assetProxyId

• **assetProxyId**: *string*

*Defined in [types/src/index.ts:213](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L213)*

___

###  nestedAssetData

• **nestedAssetData**: *[SingleAssetData](#singleassetdata)[]*

*Defined in [types/src/index.ts:215](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L215)*

<hr />

# Interface: ObjectMap <**T**>

## Type parameters

▪ **T**


##  Hierarchy

* **Order**

  * [SignedOrder](#class-signedorder)


##  Properties

###  chainId

• **chainId**: *number*

*Defined in [types/src/index.ts:14](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L14)*

___

###  exchangeAddress

• **exchangeAddress**: *string*

*Defined in [types/src/index.ts:15](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L15)*

___

###  expirationTimeSeconds

• **expirationTimeSeconds**: *`BigNumber`*

*Defined in [types/src/index.ts:24](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L24)*

___

###  feeRecipientAddress

• **feeRecipientAddress**: *string*

*Defined in [types/src/index.ts:18](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L18)*

___

###  makerAddress

• **makerAddress**: *string*

*Defined in [types/src/index.ts:16](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L16)*

___

###  makerAssetAmount

• **makerAssetAmount**: *`BigNumber`*

*Defined in [types/src/index.ts:20](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L20)*

___

###  makerAssetData

• **makerAssetData**: *string*

*Defined in [types/src/index.ts:26](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L26)*

___

###  makerFee

• **makerFee**: *`BigNumber`*

*Defined in [types/src/index.ts:22](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L22)*

___

###  makerFeeAssetData

• **makerFeeAssetData**: *string*

*Defined in [types/src/index.ts:28](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L28)*

___

###  salt

• **salt**: *`BigNumber`*

*Defined in [types/src/index.ts:25](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L25)*

___

###  senderAddress

• **senderAddress**: *string*

*Defined in [types/src/index.ts:19](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L19)*

___

###  takerAddress

• **takerAddress**: *string*

*Defined in [types/src/index.ts:17](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L17)*

___

###  takerAssetAmount

• **takerAssetAmount**: *`BigNumber`*

*Defined in [types/src/index.ts:21](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L21)*

___

###  takerAssetData

• **takerAssetData**: *string*

*Defined in [types/src/index.ts:27](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L27)*

___

###  takerFee

• **takerFee**: *`BigNumber`*

*Defined in [types/src/index.ts:23](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L23)*

___

###  takerFeeAssetData

• **takerFeeAssetData**: *string*

*Defined in [types/src/index.ts:29](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L29)*

<hr />











# Interface: OrderRelevantState


##   Properties

###  filledTakerAssetAmount

• **filledTakerAssetAmount**: *`BigNumber`*

*Defined in [types/src/index.ts:122](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L122)*

___

###  makerBalance

• **makerBalance**: *`BigNumber`*

*Defined in [types/src/index.ts:116](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L116)*

___

###  makerFeeBalance

• **makerFeeBalance**: *`BigNumber`*

*Defined in [types/src/index.ts:120](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L120)*

___

###  makerFeeProxyAllowance

• **makerFeeProxyAllowance**: *`BigNumber`*

*Defined in [types/src/index.ts:121](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L121)*

___

###  makerIndividualBalances

• **makerIndividualBalances**: *[ObjectMap](#class-objectmap)‹*`BigNumber`*›*

*Defined in [types/src/index.ts:117](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L117)*

___

###  makerIndividualProxyAllowances

• **makerIndividualProxyAllowances**: *[ObjectMap](#class-objectmap)‹*`BigNumber`*›*

*Defined in [types/src/index.ts:119](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L119)*

___

###  makerProxyAllowance

• **makerProxyAllowance**: *`BigNumber`*

*Defined in [types/src/index.ts:118](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L118)*

___

###  remainingFillableMakerAssetAmount

• **remainingFillableMakerAssetAmount**: *`BigNumber`*

*Defined in [types/src/index.ts:123](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L123)*

___

###  remainingFillableTakerAssetAmount

• **remainingFillableTakerAssetAmount**: *`BigNumber`*

*Defined in [types/src/index.ts:124](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L124)*

<hr />





# Interface: OrderStateInvalid


##   Properties

###  error

• **error**: *[ExchangeContractErrs](#enumeration-exchangecontracterrs)*

*Defined in [types/src/index.ts:137](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L137)*

___

###  isValid

• **isValid**: *false*

*Defined in [types/src/index.ts:135](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L135)*

___

###  orderHash

• **orderHash**: *string*

*Defined in [types/src/index.ts:136](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L136)*

___

### `Optional` transactionHash

• **transactionHash**? : *undefined | string*

*Defined in [types/src/index.ts:138](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L138)*

<hr />

# Interface: OrderStateValid


##   Properties

###  isValid

• **isValid**: *true*

*Defined in [types/src/index.ts:128](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L128)*

___

###  orderHash

• **orderHash**: *string*

*Defined in [types/src/index.ts:129](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L129)*

___

###  orderRelevantState

• **orderRelevantState**: *[OrderRelevantState](#class-orderrelevantstate)*

*Defined in [types/src/index.ts:130](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L130)*

___

### `Optional` transactionHash

• **transactionHash**? : *undefined | string*

*Defined in [types/src/index.ts:131](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L131)*

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

# Interface: SignedZeroExTransaction


##   Properties

###  data

• **data**: *string*

*Inherited from [ZeroExTransaction](#interface-zeroextransaction).[data](#data)*

*Defined in [types/src/index.ts:49](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L49)*

___

###  domain

• **domain**: *[EIP712DomainWithDefaultSchema](#class-eip712domainwithdefaultschema)*

*Inherited from [ZeroExTransaction](#interface-zeroextransaction).[domain](#domain)*

*Defined in [types/src/index.ts:50](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L50)*

___

###  expirationTimeSeconds

• **expirationTimeSeconds**: *`BigNumber`*

*Inherited from [ZeroExTransaction](#interface-zeroextransaction).[expirationTimeSeconds](#expirationtimeseconds)*

*Defined in [types/src/index.ts:46](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L46)*

___

###  gasPrice

• **gasPrice**: *`BigNumber`*

*Inherited from [ZeroExTransaction](#interface-zeroextransaction).[gasPrice](#gasprice)*

*Defined in [types/src/index.ts:47](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L47)*

___

###  salt

• **salt**: *`BigNumber`*

*Inherited from [ZeroExTransaction](#interface-zeroextransaction).[salt](#salt)*

*Defined in [types/src/index.ts:45](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L45)*

___

###  signature

• **signature**: *string*

*Defined in [types/src/index.ts:54](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L54)*

___

###  signerAddress

• **signerAddress**: *string*

*Inherited from [ZeroExTransaction](#interface-zeroextransaction).[signerAddress](#signeraddress)*

*Defined in [types/src/index.ts:48](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L48)*

<hr />













# Interface: StaticCallAssetData


##   Properties

###  assetProxyId

• **assetProxyId**: *string*

*Defined in [types/src/index.ts:191](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L191)*

___

###  callResultHash

• **callResultHash**: *string*

*Defined in [types/src/index.ts:194](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L194)*

___

###  callTarget

• **callTarget**: *string*

*Defined in [types/src/index.ts:192](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L192)*

___

###  staticCallData

• **staticCallData**: *string*

*Defined in [types/src/index.ts:193](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L193)*

<hr />



























# Interface: ValidatorSignature

Validator signature components


##   Properties

###  signature

• **signature**: *string*

*Defined in [types/src/index.ts:71](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L71)*

___

###  validatorAddress

• **validatorAddress**: *string*

*Defined in [types/src/index.ts:70](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L70)*

<hr />

# Interface: ZeroExTransaction

ZeroExTransaction for use with 0x Exchange executeTransaction


##   Properties

###  data

• **data**: *string*

*Defined in [types/src/index.ts:49](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L49)*

___

###  domain

• **domain**: *[EIP712DomainWithDefaultSchema](#class-eip712domainwithdefaultschema)*

*Defined in [types/src/index.ts:50](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L50)*

___

###  expirationTimeSeconds

• **expirationTimeSeconds**: *`BigNumber`*

*Defined in [types/src/index.ts:46](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L46)*

___

###  gasPrice

• **gasPrice**: *`BigNumber`*

*Defined in [types/src/index.ts:47](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L47)*

___

###  salt

• **salt**: *`BigNumber`*

*Defined in [types/src/index.ts:45](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L45)*

___

###  signerAddress

• **signerAddress**: *string*

*Defined in [types/src/index.ts:48](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L48)*

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



<hr /> 



<hr /> 



<hr /> 



<hr /> 




##  Object literals

### `Const` assetDataUtils

#### ▪ **assetDataUtils**: *object*

*Defined in [order-utils/src/asset_data_utils.ts:23](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/asset_data_utils.ts#L23)*

####  assertIsERC1155AssetData

▸ **assertIsERC1155AssetData**(`assetData`: string): *void*

*Defined in [order-utils/src/asset_data_utils.ts:397](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/asset_data_utils.ts#L397)*

Throws if the assetData is not ERC1155.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`assetData` | string | Hex encoded assetData string  |

**Returns:** *void*

####  assertIsERC20AssetData

▸ **assertIsERC20AssetData**(`assetData`: string): *void*

*Defined in [order-utils/src/asset_data_utils.ts:353](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/asset_data_utils.ts#L353)*

Throws if the length or assetProxyId are invalid for the ERC20Proxy.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`assetData` | string | Hex encoded assetData string  |

**Returns:** *void*

####  assertIsERC721AssetData

▸ **assertIsERC721AssetData**(`assetData`: string): *void*

*Defined in [order-utils/src/asset_data_utils.ts:375](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/asset_data_utils.ts#L375)*

Throws if the length or assetProxyId are invalid for the ERC721Proxy.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`assetData` | string | Hex encoded assetData string  |

**Returns:** *void*

####  assertIsMultiAssetData

▸ **assertIsMultiAssetData**(`assetData`: string): *void*

*Defined in [order-utils/src/asset_data_utils.ts:419](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/asset_data_utils.ts#L419)*

Throws if the length or assetProxyId are invalid for the MultiAssetProxy.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`assetData` | string | Hex encoded assetData string  |

**Returns:** *void*

####  assertIsStaticCallAssetData

▸ **assertIsStaticCallAssetData**(`assetData`: string): *void*

*Defined in [order-utils/src/asset_data_utils.ts:441](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/asset_data_utils.ts#L441)*

Throws if the assetData is not StaticCallData.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`assetData` | string | Hex encoded assetData string  |

**Returns:** *void*

####  assertWordAlignedAssetData

▸ **assertWordAlignedAssetData**(`assetData`: string): *void*

*Defined in [order-utils/src/asset_data_utils.ts:463](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/asset_data_utils.ts#L463)*

Throws if the assetData is not padded to 32 bytes.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`assetData` | string | Hex encoded assetData string  |

**Returns:** *void*

####  decodeAssetDataOrThrow

▸ **decodeAssetDataOrThrow**(`assetData`: string): *[SingleAssetData](#singleassetdata) | `MultiAssetData`*

*Defined in [order-utils/src/asset_data_utils.ts:502](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/asset_data_utils.ts#L502)*

Decode any assetData into its corresponding assetData object

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`assetData` | string | Hex encoded assetData string to decode |

**Returns:** *[SingleAssetData](#singleassetdata) | `MultiAssetData`*

Either a ERC20, ERC721, ERC1155, or MultiAsset assetData object

####  decodeAssetProxyId

▸ **decodeAssetProxyId**(`assetData`: string): *`AssetProxyId`*

*Defined in [order-utils/src/asset_data_utils.ts:294](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/asset_data_utils.ts#L294)*

Decode and return the assetProxyId from the assetData

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`assetData` | string | Hex encoded assetData string to decode |

**Returns:** *`AssetProxyId`*

The assetProxyId

####  decodeDutchAuctionData

▸ **decodeDutchAuctionData**(`dutchAuctionData`: string): *`DutchAuctionData`*

*Defined in [order-utils/src/asset_data_utils.ts:263](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/asset_data_utils.ts#L263)*

Dutch auction details are encoded with the asset data for a 0x order. This function decodes a hex
encoded assetData string, containing information both about the asset being traded and the
dutch auction.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`dutchAuctionData` | string | Hex encoded assetData string for the asset being auctioned. |

**Returns:** *`DutchAuctionData`*

An object containing the auction asset, auction begin time and auction begin amount.

####  decodeERC1155AssetData

▸ **decodeERC1155AssetData**(`assetData`: string): *`ERC1155AssetData`*

*Defined in [order-utils/src/asset_data_utils.ts:107](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/asset_data_utils.ts#L107)*

Decodes an ERC1155 assetData hex string into its corresponding ERC1155 components.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`assetData` | string | Hex encoded assetData string to decode |

**Returns:** *`ERC1155AssetData`*

An object containing the decoded tokenAddress, tokenIds, tokenValues, callbackData & assetProxyId

####  decodeERC20AssetData

▸ **decodeERC20AssetData**(`assetData`: string): *`ERC20AssetData`*

*Defined in [order-utils/src/asset_data_utils.ts:41](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/asset_data_utils.ts#L41)*

Decodes an ERC20 assetData hex string into its corresponding ERC20 tokenAddress & assetProxyId

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`assetData` | string | Hex encoded assetData string to decode |

**Returns:** *`ERC20AssetData`*

An object containing the decoded tokenAddress & assetProxyId

####  decodeERC721AssetData

▸ **decodeERC721AssetData**(`assetData`: string): *`ERC721AssetData`*

*Defined in [order-utils/src/asset_data_utils.ts:70](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/asset_data_utils.ts#L70)*

Decodes an ERC721 assetData hex string into its corresponding ERC721 tokenAddress, tokenId & assetProxyId

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`assetData` | string | Hex encoded assetData string to decode |

**Returns:** *`ERC721AssetData`*

An object containing the decoded tokenAddress, tokenId & assetProxyId

####  decodeMultiAssetData

▸ **decodeMultiAssetData**(`assetData`: string): *`MultiAssetData`*

*Defined in [order-utils/src/asset_data_utils.ts:149](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/asset_data_utils.ts#L149)*

Decodes a MultiAsset assetData hex string into its corresponding amounts and nestedAssetData

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`assetData` | string | Hex encoded assetData string to decode |

**Returns:** *`MultiAssetData`*

An object containing the decoded amounts and nestedAssetData

####  decodeMultiAssetDataRecursively

▸ **decodeMultiAssetDataRecursively**(`assetData`: string): *`MultiAssetDataWithRecursiveDecoding`*

*Defined in [order-utils/src/asset_data_utils.ts:175](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/asset_data_utils.ts#L175)*

Decodes a MultiAsset assetData hex string into its corresponding amounts and decoded nestedAssetData elements (all nested elements are flattened)

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`assetData` | string | Hex encoded assetData string to decode |

**Returns:** *`MultiAssetDataWithRecursiveDecoding`*

An object containing the decoded amounts and nestedAssetData

####  decodeStaticCallAssetData

▸ **decodeStaticCallAssetData**(`assetData`: string): *`StaticCallAssetData`*

*Defined in [order-utils/src/asset_data_utils.ts:225](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/asset_data_utils.ts#L225)*

Decoded StaticCall assetData into its corresponding callTarget, staticCallData, and expected callResultHash

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`assetData` | string | Hex encoded assetData string to decode |

**Returns:** *`StaticCallAssetData`*

An object containing the decoded callTarget, staticCallData, and expected callResultHash

####  encodeDutchAuctionAssetData

▸ **encodeDutchAuctionAssetData**(`assetData`: string, `beginTimeSeconds`: `BigNumber`, `beginAmount`: `BigNumber`): *string*

*Defined in [order-utils/src/asset_data_utils.ts:245](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/asset_data_utils.ts#L245)*

Dutch auction details are encoded with the asset data for a 0x order. This function produces a hex
encoded assetData string, containing information both about the asset being traded and the
dutch auction; which is usable in the makerAssetData or takerAssetData fields in a 0x order.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`assetData` | string | Hex encoded assetData string for the asset being auctioned. |
`beginTimeSeconds` | `BigNumber` | Begin time of the dutch auction. |
`beginAmount` | `BigNumber` | Starting amount being sold in the dutch auction. |

**Returns:** *string*

The hex encoded assetData string.

####  encodeERC1155AssetData

▸ **encodeERC1155AssetData**(`tokenAddress`: string, `tokenIds`: `BigNumber`[], `tokenValues`: `BigNumber`[], `callbackData`: string): *string*

*Defined in [order-utils/src/asset_data_utils.ts:91](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/asset_data_utils.ts#L91)*

Encodes a set of ERC1155 assets into an assetData string, usable in the makerAssetData or
takerAssetData fields of a 0x order.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`tokenAddress` | string | The token address of the ERC1155 contract |
`tokenIds` | `BigNumber`[] | The Id's of the ERC1155 tokens to transfer |
`tokenValues` | `BigNumber`[] | The values of each respective token Id to transfer |
`callbackData` | string | The data forwarded to a receiver, if receiver is a contract. |

**Returns:** *string*

The hex encoded assetData string

####  encodeERC20AssetData

▸ **encodeERC20AssetData**(`tokenAddress`: string): *string*

*Defined in [order-utils/src/asset_data_utils.ts:30](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/asset_data_utils.ts#L30)*

Encodes an ERC20 token address into a hex encoded assetData string, usable in the makerAssetData or
takerAssetData fields in a 0x order.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`tokenAddress` | string | The ERC20 token address to encode |

**Returns:** *string*

The hex encoded assetData string

####  encodeERC721AssetData

▸ **encodeERC721AssetData**(`tokenAddress`: string, `tokenId`: `BigNumber`): *string*

*Defined in [order-utils/src/asset_data_utils.ts:59](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/asset_data_utils.ts#L59)*

Encodes an ERC721 token address into a hex encoded assetData string, usable in the makerAssetData or
takerAssetData fields in a 0x order.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`tokenAddress` | string | The ERC721 token address to encode |
`tokenId` | `BigNumber` | The ERC721 tokenId to encode |

**Returns:** *string*

The hex encoded assetData string

####  encodeMultiAssetData

▸ **encodeMultiAssetData**(`amounts`: `BigNumber`[], `nestedAssetData`: string[]): *string*

*Defined in [order-utils/src/asset_data_utils.ts:130](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/asset_data_utils.ts#L130)*

Encodes assetData for multiple AssetProxies into a single hex encoded assetData string, usable in the makerAssetData or
takerAssetData fields in a 0x order.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`amounts` | `BigNumber`[] | Amounts of each asset that correspond to a single unit within an order. |
`nestedAssetData` | string[] | assetData strings that correspond to a valid assetProxyId. |

**Returns:** *string*

The hex encoded assetData string

####  encodeStaticCallAssetData

▸ **encodeStaticCallAssetData**(`callTarget`: string, `staticCallData`: string, `callResultHash`: string): *string*

*Defined in [order-utils/src/asset_data_utils.ts:214](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/asset_data_utils.ts#L214)*

Encodes StaticCallProxy data into an assetData hex string

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`callTarget` | string | Address of contract to call from StaticCallProxy |
`staticCallData` | string | The function data that will be called on the callTarget contract |
`callResultHash` | string | The keccak256 hash of the ABI encoded expected output of the static call |

**Returns:** *string*

The hex encoded assetData string

####  isERC1155AssetData

▸ **isERC1155AssetData**(`decodedAssetData`: [SingleAssetData](#singleassetdata) | `MultiAssetData`): *boolean*

*Defined in [order-utils/src/asset_data_utils.ts:332](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/asset_data_utils.ts#L332)*

Checks if the decoded asset data is valid ERC1155 data

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`decodedAssetData` | [SingleAssetData](#singleassetdata) \| `MultiAssetData` | The decoded asset data to check  |

**Returns:** *boolean*

####  isERC20AssetData

▸ **isERC20AssetData**(`decodedAssetData`: [SingleAssetData](#singleassetdata) | `MultiAssetData`): *boolean*

*Defined in [order-utils/src/asset_data_utils.ts:318](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/asset_data_utils.ts#L318)*

Checks if the decoded asset data is valid ERC20 data

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`decodedAssetData` | [SingleAssetData](#singleassetdata) \| `MultiAssetData` | The decoded asset data to check  |

**Returns:** *boolean*

####  isERC721AssetData

▸ **isERC721AssetData**(`decodedAssetData`: [SingleAssetData](#singleassetdata) | `MultiAssetData`): *boolean*

*Defined in [order-utils/src/asset_data_utils.ts:325](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/asset_data_utils.ts#L325)*

Checks if the decoded asset data is valid ERC721 data

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`decodedAssetData` | [SingleAssetData](#singleassetdata) \| `MultiAssetData` | The decoded asset data to check  |

**Returns:** *boolean*

####  isMultiAssetData

▸ **isMultiAssetData**(`decodedAssetData`: [SingleAssetData](#singleassetdata) | `MultiAssetData`): *boolean*

*Defined in [order-utils/src/asset_data_utils.ts:339](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/asset_data_utils.ts#L339)*

Checks if the decoded asset data is valid MultiAsset data

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`decodedAssetData` | [SingleAssetData](#singleassetdata) \| `MultiAssetData` | The decoded asset data to check  |

**Returns:** *boolean*

####  isStaticCallAssetData

▸ **isStaticCallAssetData**(`decodedAssetData`: [SingleAssetData](#singleassetdata) | `MultiAssetData`): *boolean*

*Defined in [order-utils/src/asset_data_utils.ts:346](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/asset_data_utils.ts#L346)*

Checks if the decoded asset data is valid StaticCall data

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`decodedAssetData` | [SingleAssetData](#singleassetdata) \| `MultiAssetData` | The decoded asset data to check  |

**Returns:** *boolean*

####  validateAssetDataOrThrow

▸ **validateAssetDataOrThrow**(`assetData`: string): *void*

*Defined in [order-utils/src/asset_data_utils.ts:475](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/asset_data_utils.ts#L475)*

Throws if the length or assetProxyId are invalid for the corresponding AssetProxy.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`assetData` | string | Hex encoded assetData string  |

**Returns:** *void*

<hr />




##  Object literals

#### `Const` eip712Utils

#### ▪ **eip712Utils**: *object*

*Defined in [order-utils/src/eip712_utils.ts:18](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/eip712_utils.ts#L18)*

####  createCoordinatorApprovalTypedData

▸ **createCoordinatorApprovalTypedData**(`transaction`: `SignedZeroExTransaction`, `verifyingContract`: string, `txOrigin`: string, `approvalExpirationTimeSeconds`: `BigNumber`): *`EIP712TypedData`*

*Defined in [order-utils/src/eip712_utils.ts:105](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/eip712_utils.ts#L105)*

Creates an Coordiantor typedData EIP712TypedData object for use with the Coordinator extension contract

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`transaction` | `SignedZeroExTransaction` | A 0x transaction |
`verifyingContract` | string | The coordinator extension contract address that will be verifying the typedData |
`txOrigin` | string | The desired `tx.origin` that should be able to submit an Ethereum txn involving this 0x transaction |
`approvalExpirationTimeSeconds` | `BigNumber` | The approvals expiration time |

**Returns:** *`EIP712TypedData`*

A typed data object

####  createOrderTypedData

▸ **createOrderTypedData**(`order`: `Order`): *`EIP712TypedData`*

*Defined in [order-utils/src/eip712_utils.ts:57](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/eip712_utils.ts#L57)*

Creates an Order EIP712TypedData object for use with signTypedData.

**Parameters:**

Name | Type |
------ | ------ |
`order` | `Order` |

**Returns:** *`EIP712TypedData`*

A typed data object

####  createTypedData

▸ **createTypedData**(`primaryType`: string, `types`: `EIP712Types`, `message`: `EIP712Object`, `domain`: `EIP712DomainWithDefaultSchema`): *`EIP712TypedData`*

*Defined in [order-utils/src/eip712_utils.ts:27](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/eip712_utils.ts#L27)*

Creates a EIP712TypedData object specific to the 0x protocol for use with signTypedData.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`primaryType` | string | The primary type found in message |
`types` | `EIP712Types` | The additional types for the data in message |
`message` | `EIP712Object` | The contents of the message |
`domain` | `EIP712DomainWithDefaultSchema` | Domain containing a name (optional), version (optional), and verifying contract address |

**Returns:** *`EIP712TypedData`*

A typed data object

####  createZeroExTransactionTypedData

▸ **createZeroExTransactionTypedData**(`zeroExTransaction`: `ZeroExTransaction`): *`EIP712TypedData`*

*Defined in [order-utils/src/eip712_utils.ts:82](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/eip712_utils.ts#L82)*

Creates an ExecuteTransaction EIP712TypedData object for use with signTypedData and
0x Exchange executeTransaction.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`zeroExTransaction` | `ZeroExTransaction` | the 0x transaction |

**Returns:** *`EIP712TypedData`*

A typed data object

<hr />



<hr /> 



<hr /> 



<hr /> 



<hr /> 




##  Object literals

#### `Const` marketUtils

#### ▪ **marketUtils**: *object*

*Defined in [order-utils/src/market_utils.ts:17](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/market_utils.ts#L17)*

####  findFeeOrdersThatCoverFeesForTargetOrders

▸ **findFeeOrdersThatCoverFeesForTargetOrders**<**T**>(`orders`: `T`[], `feeOrders`: `T`[], `opts?`: [FindFeeOrdersThatCoverFeesForTargetOrdersOpts](#interface-findfeeordersthatcoverfeesfortargetordersopts)): *[FeeOrdersAndRemainingFeeAmount](#interface-feeordersandremainingfeeamount)‹*`T`*›*

*Defined in [order-utils/src/market_utils.ts:64](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/market_utils.ts#L64)*

Takes an array of orders and an array of feeOrders. Returns a subset of the feeOrders that has enough ZRX
in order to fill the takerFees required by orders plus a slippageBufferAmount.
Iterates from first feeOrder to last. Sort the feeOrders by ascending rate in order to get the subset of
feeOrders that will cost the least ETH.

**Type parameters:**

▪ **T**: *`Order`*

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`orders` | `T`[] | An array of objects that extend the Order interface. All orders should specify ZRX as                      the makerAsset and WETH as the takerAsset. |
`feeOrders` | `T`[] | An array of objects that extend the Order interface. All orders should specify ZRX as                      the makerAsset and WETH as the takerAsset. |
`opts?` | [FindFeeOrdersThatCoverFeesForTargetOrdersOpts](#interface-findfeeordersthatcoverfeesfortargetordersopts) | Optional arguments this function accepts. |

**Returns:** *[FeeOrdersAndRemainingFeeAmount](#interface-feeordersandremainingfeeamount)‹*`T`*›*

Resulting orders and remaining fee amount that could not be covered by the input.

####  findOrdersThatCoverMakerAssetFillAmount

▸ **findOrdersThatCoverMakerAssetFillAmount**<**T**>(`orders`: `T`[], `makerAssetFillAmount`: `BigNumber`, `opts?`: [FindOrdersThatCoverMakerAssetFillAmountOpts](#interface-findordersthatcovermakerassetfillamountopts)): *[OrdersAndRemainingMakerFillAmount](#interface-ordersandremainingmakerfillamount)‹*`T`*›*

*Defined in [order-utils/src/market_utils.ts:40](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/market_utils.ts#L40)*

Takes an array of orders and returns a subset of those orders that has enough makerAssetAmount
in order to fill the input makerAssetFillAmount plus slippageBufferAmount. Iterates from first order to last order.
Sort the input by ascending rate in order to get the subset of orders that will cost the least ETH.

**Type parameters:**

▪ **T**: *`Order`*

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`orders` | `T`[] | An array of objects that extend the Order interface. All orders should specify the same makerAsset.                                      All orders should specify WETH as the takerAsset. |
`makerAssetFillAmount` | `BigNumber` | The amount of makerAsset desired to be filled. |
`opts?` | [FindOrdersThatCoverMakerAssetFillAmountOpts](#interface-findordersthatcovermakerassetfillamountopts) | Optional arguments this function accepts. |

**Returns:** *[OrdersAndRemainingMakerFillAmount](#interface-ordersandremainingmakerfillamount)‹*`T`*›*

Resulting orders and remaining fill amount that could not be covered by the input.

####  findOrdersThatCoverTakerAssetFillAmount

▸ **findOrdersThatCoverTakerAssetFillAmount**<**T**>(`orders`: `T`[], `takerAssetFillAmount`: `BigNumber`, `opts?`: [FindOrdersThatCoverTakerAssetFillAmountOpts](#interface-findordersthatcovertakerassetfillamountopts)): *[OrdersAndRemainingTakerFillAmount](#interface-ordersandremainingtakerfillamount)‹*`T`*›*

*Defined in [order-utils/src/market_utils.ts:18](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/market_utils.ts#L18)*

**Type parameters:**

▪ **T**: *`Order`*

**Parameters:**

Name | Type |
------ | ------ |
`orders` | `T`[] |
`takerAssetFillAmount` | `BigNumber` |
`opts?` | [FindOrdersThatCoverTakerAssetFillAmountOpts](#interface-findordersthatcovertakerassetfillamountopts) |

**Returns:** *[OrdersAndRemainingTakerFillAmount](#interface-ordersandremainingtakerfillamount)‹*`T`*›*

<hr />




##  Object literals

#### `Const` orderCalculationUtils

#### ▪ **orderCalculationUtils**: *object*

*Defined in [order-utils/src/order_calculation_utils.ts:6](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/order_calculation_utils.ts#L6)*

####  getMakerFeeAmount

▸ **getMakerFeeAmount**(`order`: `Order`, `makerFillAmount`: `BigNumber`): *`BigNumber`*

*Defined in [order-utils/src/order_calculation_utils.ts:75](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/order_calculation_utils.ts#L75)*

Given an amount of maker asset, calculate the fee amount required for the maker

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`order` | `Order` | The order |
`makerFillAmount` | `BigNumber` | the amount of maker asset  |

**Returns:** *`BigNumber`*

####  getMakerFillAmount

▸ **getMakerFillAmount**(`order`: `Order`, `takerFillAmount`: `BigNumber`): *`BigNumber`*

*Defined in [order-utils/src/order_calculation_utils.ts:36](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/order_calculation_utils.ts#L36)*

Given an amount of taker asset, calculate the the amount of maker asset

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`order` | `Order` | The order |
`takerFillAmount` | `BigNumber` | - |

**Returns:** *`BigNumber`*

####  getTakerFeeAmount

▸ **getTakerFeeAmount**(`order`: `Order`, `takerFillAmount`: `BigNumber`): *`BigNumber`*

*Defined in [order-utils/src/order_calculation_utils.ts:62](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/order_calculation_utils.ts#L62)*

Given an amount of taker asset, calculate the fee amount required for the taker

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`order` | `Order` | The order |
`takerFillAmount` | `BigNumber` | the amount of taker asset  |

**Returns:** *`BigNumber`*

####  getTakerFillAmount

▸ **getTakerFillAmount**(`order`: `Order`, `makerFillAmount`: `BigNumber`): *`BigNumber`*

*Defined in [order-utils/src/order_calculation_utils.ts:49](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/order_calculation_utils.ts#L49)*

Given an amount of maker asset, calculate the equivalent amount in taker asset

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`order` | `Order` | The order |
`makerFillAmount` | `BigNumber` | the amount of maker asset  |

**Returns:** *`BigNumber`*

####  getTakerFillAmountForFeeOrder

▸ **getTakerFillAmountForFeeOrder**(`order`: `Order`, `makerFillAmount`: `BigNumber`): *[`BigNumber`, `BigNumber`]*

*Defined in [order-utils/src/order_calculation_utils.ts:89](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/order_calculation_utils.ts#L89)*

Given a desired amount of ZRX from a fee order, calculate the amount of taker asset required to fill.
Also calculate how much ZRX needs to be purchased in order to fill the desired amount plus the taker fee amount

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`order` | `Order` | The order |
`makerFillAmount` | `BigNumber` | the amount of maker asset  |

**Returns:** *[`BigNumber`, `BigNumber`]*

####  isOpenOrder

▸ **isOpenOrder**(`order`: `Order`): *boolean*

*Defined in [order-utils/src/order_calculation_utils.ts:28](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/order_calculation_utils.ts#L28)*

Determines if the order is open and fillable by any taker.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`order` | `Order` | The order  |

**Returns:** *boolean*

####  isOrderExpired

▸ **isOrderExpired**(`order`: `Order`): *boolean*

*Defined in [order-utils/src/order_calculation_utils.ts:11](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/order_calculation_utils.ts#L11)*

Determines if the order is expired given the current time

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`order` | `Order` | The order for expiry calculation  |

**Returns:** *boolean*

####  willOrderExpire

▸ **willOrderExpire**(`order`: `Order`, `secondsFromNow`: number): *boolean*

*Defined in [order-utils/src/order_calculation_utils.ts:19](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/order_calculation_utils.ts#L19)*

Calculates if the order will expire in the future.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`order` | `Order` | The order for expiry calculation |
`secondsFromNow` | number | The amount of seconds from current time  |

**Returns:** *boolean*

<hr />




##  Object literals

#### `Const` orderHashUtils

#### ▪ **orderHashUtils**: *object*

*Defined in [order-utils/src/order_hash.ts:12](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/order_hash.ts#L12)*

####  getOrderHashBuffer

▸ **getOrderHashBuffer**(`order`: `SignedOrder` | `Order`): *`Buffer`*

*Defined in [order-utils/src/order_hash.ts:55](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/order_hash.ts#L55)*

Computes the orderHash for a supplied order

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`order` | `SignedOrder` \| `Order` | An object that conforms to the Order or SignedOrder interface definitions. |

**Returns:** *`Buffer`*

A Buffer containing the resulting orderHash from hashing the supplied order

####  getOrderHashHex

▸ **getOrderHashHex**(`order`: `SignedOrder` | `Order`): *string*

*Defined in [order-utils/src/order_hash.ts:33](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/order_hash.ts#L33)*

Computes the orderHash for a supplied order.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`order` | `SignedOrder` \| `Order` | An object that conforms to the Order or SignedOrder interface definitions. |

**Returns:** *string*

Hex encoded string orderHash from hashing the supplied order.

####  isValidOrderHash

▸ **isValidOrderHash**(`orderHash`: string): *boolean*

*Defined in [order-utils/src/order_hash.ts:20](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/order_hash.ts#L20)*

Checks if the supplied hex encoded order hash is valid.
Note: Valid means it has the expected format, not that an order with the orderHash exists.
Use this method when processing orderHashes submitted as user input.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`orderHash` | string | Hex encoded orderHash. |

**Returns:** *boolean*

Whether the supplied orderHash has the expected format.

<hr />



<hr /> 



<hr /> 




##  Object literals

#### `Const` orderParsingUtils

#### ▪ **orderParsingUtils**: *object*

*Defined in [order-utils/src/parsing_utils.ts:4](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/parsing_utils.ts#L4)*

####  convertOrderStringFieldsToBigNumber

▸ **convertOrderStringFieldsToBigNumber**(`order`: any): *any*

*Defined in [order-utils/src/parsing_utils.ts:17](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/parsing_utils.ts#L17)*

**Parameters:**

Name | Type |
------ | ------ |
`order` | any |

**Returns:** *any*

####  convertStringsFieldsToBigNumbers

▸ **convertStringsFieldsToBigNumbers**(`obj`: any, `fields`: string[]): *any*

*Defined in [order-utils/src/parsing_utils.ts:5](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/parsing_utils.ts#L5)*

**Parameters:**

Name | Type |
------ | ------ |
`obj` | any |
`fields` | string[] |

**Returns:** *any*

<hr />




##  Object literals

#### `Const` rateUtils

#### ▪ **rateUtils**: *object*

*Defined in [order-utils/src/rate_utils.ts:8](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/rate_utils.ts#L8)*

####  getFeeAdjustedRateOfFeeOrder

▸ **getFeeAdjustedRateOfFeeOrder**(`feeOrder`: `Order`): *`BigNumber`*

*Defined in [order-utils/src/rate_utils.ts:36](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/rate_utils.ts#L36)*

Takes a fee order (makerAssetData corresponds to ZRX and takerAssetData corresponds to WETH) and calculates
the fee adjusted rate (WETH/ZRX) by dividing the takerAssetAmount by the makerAmount minus the takerFee

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`feeOrder` | `Order` | An object that conforms to the order interface |

**Returns:** *`BigNumber`*

The rate (WETH/ZRX) of the fee order adjusted for fees

####  getFeeAdjustedRateOfOrder

▸ **getFeeAdjustedRateOfOrder**(`order`: `Order`, `feeRate`: `BigNumber`): *`BigNumber`*

*Defined in [order-utils/src/rate_utils.ts:18](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/rate_utils.ts#L18)*

Takes an order and calculates the fee adjusted rate (takerAsset/makerAsset) by calculating how much takerAsset
is required to cover the fees (feeRate * takerFee), adding the takerAssetAmount and dividing by makerAssetAmount

**Parameters:**

Name | Type | Default | Description |
------ | ------ | ------ | ------ |
`order` | `Order` | - | An object that conforms to the order interface |
`feeRate` | `BigNumber` |  constants.ZERO_AMOUNT | The market rate of ZRX denominated in takerAssetAmount                      (ex. feeRate is 0.1 takerAsset/ZRX if it takes 1 unit of takerAsset to buy 10 ZRX)                      Defaults to 0 |

**Returns:** *`BigNumber`*

The rate (takerAsset/makerAsset) of the order adjusted for fees

<hr />




##  Functions

####  generatePseudoRandomSalt

▸ **generatePseudoRandomSalt**(): *`BigNumber`*

*Defined in [order-utils/src/salt.ts:9](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/salt.ts#L9)*

Generates a pseudo-random 256-bit salt.
The salt can be included in a 0x order, ensuring that the order generates a unique orderHash
and will not collide with other outstanding orders that are identical in all other parameters.

**Returns:** *`BigNumber`*

A pseudo-random 256-bit number that can be used as a salt.

<hr />




##  Object literals

#### `Const` signatureUtils

#### ▪ **signatureUtils**: *object*

*Defined in [order-utils/src/signature_utils.ts:27](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/signature_utils.ts#L27)*

####  addSignedMessagePrefix

▸ **addSignedMessagePrefix**(`message`: string): *string*

*Defined in [order-utils/src/signature_utils.ts:500](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/signature_utils.ts#L500)*

Adds the relevant prefix to the message being signed.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`message` | string | Message to sign |

**Returns:** *string*

Prefixed message

####  convertECSignatureToSignatureHex

▸ **convertECSignatureToSignatureHex**(`ecSignature`: `ECSignature`): *string*

*Defined in [order-utils/src/signature_utils.ts:474](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/signature_utils.ts#L474)*

Combines ECSignature with V,R,S and the EthSign signature type for use in 0x protocol

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`ecSignature` | `ECSignature` | The ECSignature of the signed data |

**Returns:** *string*

Hex encoded string of signature (v,r,s) with Signature Type

####  convertToSignatureWithType

▸ **convertToSignatureWithType**(`signature`: string, `signatureType`: `SignatureType`): *string*

*Defined in [order-utils/src/signature_utils.ts:490](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/signature_utils.ts#L490)*

Combines the signature proof and the Signature Type.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`signature` | string | The hex encoded signature proof |
`signatureType` | `SignatureType` | The signature type, i.e EthSign, Wallet etc. |

**Returns:** *string*

Hex encoded string of signature proof with Signature Type

####  ecSignHashAsync

▸ **ecSignHashAsync**(`supportedProvider`: [SupportedProvider](#supportedprovider), `msgHash`: string, `signerAddress`: string): *`Promise<string>`*

*Defined in [order-utils/src/signature_utils.ts:417](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/signature_utils.ts#L417)*

Signs a hash using `eth_sign` and returns its elliptic curve signature and signature type.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`supportedProvider` | [SupportedProvider](#supportedprovider) | Web3 provider to use for all JSON RPC requests |
`msgHash` | string | Hex encoded message to sign. |
`signerAddress` | string | The hex encoded Ethereum address you wish to sign it with. This address          must be available via the supplied Provider. |

**Returns:** *`Promise<string>`*

A hex encoded string containing the Elliptic curve signature generated by signing the msgHash and the Signature Type.

####  ecSignOrderAsync

▸ **ecSignOrderAsync**(`supportedProvider`: [SupportedProvider](#supportedprovider), `order`: `Order`, `signerAddress`: string): *`Promise<SignedOrder>`*

*Defined in [order-utils/src/signature_utils.ts:252](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/signature_utils.ts#L252)*

Signs an order and returns a SignedOrder. First `eth_signTypedData` is requested
then a fallback to `eth_sign` if not available on the supplied provider.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`supportedProvider` | [SupportedProvider](#supportedprovider) | Web3 provider to use for all JSON RPC requests |
`order` | `Order` | The Order to sign. |
`signerAddress` | string | The hex encoded Ethereum address you wish to sign it with. This address          must be available via the supplied Provider. |

**Returns:** *`Promise<SignedOrder>`*

A SignedOrder containing the order and Elliptic curve signature with Signature Type.

####  ecSignTransactionAsync

▸ **ecSignTransactionAsync**(`supportedProvider`: [SupportedProvider](#supportedprovider), `transaction`: `ZeroExTransaction`, `signerAddress`: string): *`Promise<SignedZeroExTransaction>`*

*Defined in [order-utils/src/signature_utils.ts:331](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/signature_utils.ts#L331)*

Signs a transaction and returns a SignedZeroExTransaction. First `eth_signTypedData` is requested
then a fallback to `eth_sign` if not available on the supplied provider.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`supportedProvider` | [SupportedProvider](#supportedprovider) | Web3 provider to use for all JSON RPC requests |
`transaction` | `ZeroExTransaction` | The ZeroExTransaction to sign. |
`signerAddress` | string | The hex encoded Ethereum address you wish to sign it with. This address          must be available via the supplied Provider. |

**Returns:** *`Promise<SignedZeroExTransaction>`*

A SignedTransaction containing the order and Elliptic curve signature with Signature Type.

####  ecSignTypedDataOrderAsync

▸ **ecSignTypedDataOrderAsync**(`supportedProvider`: [SupportedProvider](#supportedprovider), `order`: `Order`, `signerAddress`: string): *`Promise<SignedOrder>`*

*Defined in [order-utils/src/signature_utils.ts:287](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/signature_utils.ts#L287)*

Signs an order using `eth_signTypedData` and returns a SignedOrder.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`supportedProvider` | [SupportedProvider](#supportedprovider) | Web3 provider to use for all JSON RPC requests |
`order` | `Order` | The Order to sign. |
`signerAddress` | string | The hex encoded Ethereum address you wish to sign it with. This address          must be available via the supplied Provider. |

**Returns:** *`Promise<SignedOrder>`*

A SignedOrder containing the order and Elliptic curve signature with Signature Type.

####  ecSignTypedDataTransactionAsync

▸ **ecSignTypedDataTransactionAsync**(`supportedProvider`: [SupportedProvider](#supportedprovider), `transaction`: `ZeroExTransaction`, `signerAddress`: string): *`Promise<SignedZeroExTransaction>`*

*Defined in [order-utils/src/signature_utils.ts:374](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/signature_utils.ts#L374)*

Signs a ZeroExTransaction using `eth_signTypedData` and returns a SignedZeroExTransaction.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`supportedProvider` | [SupportedProvider](#supportedprovider) | Web3 provider to use for all JSON RPC requests |
`transaction` | `ZeroExTransaction` | The ZeroEx Transaction to sign. |
`signerAddress` | string | The hex encoded Ethereum address you wish to sign it with. This address          must be available via the supplied Provider. |

**Returns:** *`Promise<SignedZeroExTransaction>`*

A SignedZeroExTransaction containing the ZeroExTransaction and Elliptic curve signature with Signature Type.

####  isValidECSignature

▸ **isValidECSignature**(`data`: string, `signature`: `ECSignature`, `signerAddress`: string): *boolean*

*Defined in [order-utils/src/signature_utils.ts:222](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/signature_utils.ts#L222)*

Checks if the supplied elliptic curve signature corresponds to signing `data` with
the private key corresponding to `signerAddress`

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`data` | string | The hex encoded data signed by the supplied signature. |
`signature` | `ECSignature` | An object containing the elliptic curve signature parameters. |
`signerAddress` | string | The hex encoded address that signed the data, producing the supplied signature. |

**Returns:** *boolean*

Whether the ECSignature is valid.

####  isValidPresignedSignatureAsync

▸ **isValidPresignedSignatureAsync**(`supportedProvider`: [SupportedProvider](#supportedprovider), `data`: string, `signerAddress`: string, `exchangeAddress?`: undefined | string): *`Promise<boolean>`*

*Defined in [order-utils/src/signature_utils.ts:107](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/signature_utils.ts#L107)*

Verifies that the provided presigned signature is valid according to the 0x Protocol smart contracts

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`supportedProvider` | [SupportedProvider](#supportedprovider) | Web3 provider to use for all JSON RPC requests |
`data` | string | The hex encoded data signed by the supplied signature |
`signerAddress` | string | The hex encoded address that signed the data, producing the supplied signature. |
`exchangeAddress?` | undefined \| string | The address of the Exchange contract to validate the signature against. |

**Returns:** *`Promise<boolean>`*

Whether the data was preSigned by the supplied signerAddress

####  isValidSignatureAsync

▸ **isValidSignatureAsync**(`supportedProvider`: [SupportedProvider](#supportedprovider), `data`: string, `signature`: string, `signerAddress`: string, `exchangeAddress?`: undefined | string): *`Promise<boolean>`*

*Defined in [order-utils/src/signature_utils.ts:38](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/signature_utils.ts#L38)*

Verifies that the provided signature is valid according to the 0x Protocol smart contracts

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`supportedProvider` | [SupportedProvider](#supportedprovider) | Web3 provider to use for all JSON RPC requests |
`data` | string | The hex encoded data signed by the supplied signature. |
`signature` | string | A hex encoded 0x Protocol signature made up of: [TypeSpecificData][SignatureType].          E.g [vrs][SignatureType.EIP712] |
`signerAddress` | string | The hex encoded address that signed the data, producing the supplied signature. |
`exchangeAddress?` | undefined \| string | Optional address of the Exchange contract to validate the signature against. |

**Returns:** *`Promise<boolean>`*

Whether the signature is valid for the supplied signerAddress and data.

####  isValidValidatorSignatureAsync

▸ **isValidValidatorSignatureAsync**(`supportedProvider`: [SupportedProvider](#supportedprovider), `data`: string, `signature`: string, `signerAddress`: string, `exchangeAddress?`: undefined | string): *`Promise<boolean>`*

*Defined in [order-utils/src/signature_utils.ts:168](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/signature_utils.ts#L168)*

Verifies that the provided validator signature is valid according to the 0x Protocol smart contracts

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`supportedProvider` | [SupportedProvider](#supportedprovider) | Web3 provider to use for all JSON RPC requests |
`data` | string | The hex encoded data signed by the supplied signature. |
`signature` | string | A hex encoded presigned 0x Protocol signature made up of: [SignatureType.Presigned] |
`signerAddress` | string | The hex encoded address that signed the data, producing the supplied signature. |
`exchangeAddress?` | undefined \| string | The address of the Exchange contract to validate the signature against. |

**Returns:** *`Promise<boolean>`*

Whether the data was preSigned by the supplied signerAddress.

####  isValidWalletSignatureAsync

▸ **isValidWalletSignatureAsync**(`supportedProvider`: [SupportedProvider](#supportedprovider), `data`: string, `signature`: string, `signerAddress`: string): *`Promise<boolean>`*

*Defined in [order-utils/src/signature_utils.ts:139](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/signature_utils.ts#L139)*

Verifies that the provided wallet signature is valid according to the 0x Protocol smart contracts

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`supportedProvider` | [SupportedProvider](#supportedprovider) | Web3 provider to use for all JSON RPC requests |
`data` | string | The hex encoded data signed by the supplied signature. |
`signature` | string | A hex encoded presigned 0x Protocol signature made up of: [SignatureType.Presigned] |
`signerAddress` | string | The hex encoded address that signed the data, producing the supplied signature. |

**Returns:** *`Promise<boolean>`*

Whether the data was preSigned by the supplied signerAddress.

####  parseECSignature

▸ **parseECSignature**(`signature`: string): *`ECSignature`*

*Defined in [order-utils/src/signature_utils.ts:512](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/signature_utils.ts#L512)*

Parse a 0x protocol hex-encoded signature string into its ECSignature components

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`signature` | string | A hex encoded ecSignature 0x Protocol signature |

**Returns:** *`ECSignature`*

An ECSignature object with r,s,v parameters

####  parseValidatorSignature

▸ **parseValidatorSignature**(`signature`: string): *`ValidatorSignature`*

*Defined in [order-utils/src/signature_utils.ts:529](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/signature_utils.ts#L529)*

Parse a hex-encoded Validator signature into validator address and signature components

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`signature` | string | A hex encoded Validator 0x Protocol signature |

**Returns:** *`ValidatorSignature`*

A ValidatorSignature with validatorAddress and signature parameters

<hr />




##  Object literals

#### `Const` sortingUtils

#### ▪ **sortingUtils**: *object*

*Defined in [order-utils/src/sorting_utils.ts:10](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/sorting_utils.ts#L10)*

####  sortFeeOrdersByFeeAdjustedRate

▸ **sortFeeOrdersByFeeAdjustedRate**<**T**>(`feeOrders`: `T`[]): *`T`[]*

*Defined in [order-utils/src/sorting_utils.ts:35](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/sorting_utils.ts#L35)*

Takes an array of fee orders (makerAssetData corresponds to ZRX and takerAssetData corresponds to WETH)
and sorts them by rate in ascending order (best rate first). Adjusts the rate according to the takerFee.

**Type parameters:**

▪ **T**: *`Order`*

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`feeOrders` | `T`[] | An array of objects that extend the Order interface. All orders should specify ZRX as                          the makerAsset and WETH as the takerAsset. |

**Returns:** *`T`[]*

The input orders sorted by rate in ascending order

####  sortOrdersByFeeAdjustedRate

▸ **sortOrdersByFeeAdjustedRate**<**T**>(`orders`: `T`[], `feeRate`: `BigNumber`): *`T`[]*

*Defined in [order-utils/src/sorting_utils.ts:21](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/sorting_utils.ts#L21)*

Takes an array of orders and sorts them by takerAsset/makerAsset rate in ascending order (best rate first).
Adjusts the rate of each order according to the feeRate and takerFee for that order.

**Type parameters:**

▪ **T**: *`Order`*

**Parameters:**

Name | Type | Default | Description |
------ | ------ | ------ | ------ |
`orders` | `T`[] | - | An array of objects that extend the Order interface. All orders should specify ZRX as                      the makerAsset and WETH as the takerAsset. |
`feeRate` | `BigNumber` |  constants.ZERO_AMOUNT | The market rate of ZRX denominated in takerAssetAmount                      (ex. feeRate is 0.1 takerAsset/ZRX if it takes 1 unit of takerAsset to buy 10 ZRX)                      Defaults to 0 |

**Returns:** *`T`[]*

The input orders sorted by rate in ascending order

<hr />



<hr /> 



<hr /> 



<hr /> 




##  Object literals

#### `Const` transactionHashUtils

#### ▪ **transactionHashUtils**: *object*

*Defined in [order-utils/src/transaction_hash.ts:9](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/transaction_hash.ts#L9)*

####  getTransactionHashBuffer

▸ **getTransactionHashBuffer**(`transaction`: `ZeroExTransaction` | `SignedZeroExTransaction`): *`Buffer`*

*Defined in [order-utils/src/transaction_hash.ts:41](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/transaction_hash.ts#L41)*

Computes the transactionHash for a supplied 0x transaction.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`transaction` | `ZeroExTransaction` \| `SignedZeroExTransaction` | An object that conforms to the ZeroExTransaction or SignedZeroExTransaction interface definitions. |

**Returns:** *`Buffer`*

A Buffer containing the resulting transactionHash from hashing the supplied 0x transaction.

####  getTransactionHashHex

▸ **getTransactionHashHex**(`transaction`: `ZeroExTransaction` | `SignedZeroExTransaction`): *string*

*Defined in [order-utils/src/transaction_hash.ts:30](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/transaction_hash.ts#L30)*

Computes the transactionHash for a supplied 0x transaction.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`transaction` | `ZeroExTransaction` \| `SignedZeroExTransaction` | An object that conforms to the ZeroExTransaction or SignedZeroExTransaction interface definitions. |

**Returns:** *string*

Hex encoded string transactionHash from hashing the supplied order.

####  isValidTransactionHash

▸ **isValidTransactionHash**(`transactionHash`: string): *boolean*

*Defined in [order-utils/src/transaction_hash.ts:17](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/order-utils/src/transaction_hash.ts#L17)*

Checks if the supplied hex encoded 0x transaction hash is valid.
Note: Valid means it has the expected format, not that a transaction with the transactionHash exists.
Use this method when processing transactionHashes submitted as user input.

**Parameters:**

Name | Type | Description |
------ | ------ | ------ |
`transactionHash` | string | Hex encoded transactionHash. |

**Returns:** *boolean*

Whether the supplied transactionHash has the expected format.

<hr />



<hr /> 




##  Type aliases



###  AssetData

Ƭ **AssetData**: *[SingleAssetData](_types_src_index_.md#singleassetdata) | [MultiAssetData](#interface-multiassetdata) | [MultiAssetDataWithRecursiveDecoding](#interface-multiassetdatawithrecursivedecoding)*

*Defined in [types/src/index.ts:224](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L224)*

___





###  EIP712ObjectValue

Ƭ **EIP712ObjectValue**: *string | number | [EIP712Object](#interface-eip712object)*

*Defined in [types/src/index.ts:728](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L728)*

___





###  OrderState

Ƭ **OrderState**: *[OrderStateValid](#interface-orderstatevalid) | [OrderStateInvalid](#interface-orderstateinvalid)*

*Defined in [types/src/index.ts:141](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L141)*

___





###  SingleAssetData

Ƭ **SingleAssetData**: *[ERC20AssetData](#interface-erc20assetdata) | [ERC721AssetData](#interface-erc721assetdata) | [ERC1155AssetData](#interface-erc1155assetdata) | [StaticCallAssetData](#interface-staticcallassetdata)*

*Defined in [types/src/index.ts:204](https://github.com/0xProject/0x-monorepo/blob/9fe6c196a/packages/types/src/index.ts#L204)*

<hr />
