/*

  Copyright 2019 ZeroEx Intl.

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.

*/

pragma solidity ^0.5.9;


interface IStructs {

    /// @dev State of stakingProxy read-only mode.
    /// @param isReadOnlyModeSet True if in read-only mode.
    /// @param lastSetTimestamp Timestamp at which read-only mode was last set.
    struct ReadOnlyState {
        bool isReadOnlyModeSet;
        uint96 lastSetTimestamp;
    }

    /// @dev Status for a pool that actively traded during the current epoch.
    /// (see MixinExchangeFees).
    /// @param feesCollected Fees collected in ETH by this pool.
    /// @param weightedStake Amount of weighted stake in the pool.
    /// @param membersStake Amount of non-operator stake in the pool.
    struct ActivePool {
        uint256 feesCollected;
        uint256 weightedStake;
        uint256 membersStake;
    }

    /// @dev Holds state for unfinalized epoch rewards.
    /// @param rewardsAvailable Rewards (ETH) available to the epoch
    ///        being finalized (the previous epoch). This is simply the balance
    ///        of the contract at the end of the epoch.
    /// @param poolsRemaining The number of active pools in the last
    ///        epoch that have yet to be finalized through `finalizePools()`.
    /// @param totalFeesCollected The total fees collected for the epoch being finalized.
    /// @param totalWeightedStake The total fees collected for the epoch being finalized.
    /// @param totalRewardsFinalized Amount of rewards that have been paid during finalization.
    struct UnfinalizedState {
        uint256 rewardsAvailable;
        uint256 poolsRemaining;
        uint256 totalFeesCollected;
        uint256 totalWeightedStake;
        uint256 totalRewardsFinalized;
    }

    /// @dev Encapsulates a balance for the current and next epochs.
    /// Note that these balances may be stale if the current epoch
    /// is greater than `currentEpoch`.
    /// Always load this struct using _loadSyncedBalance or _loadUnsyncedBalance.
    /// @param currentEpoch the current epoch
    /// @param currentEpochBalance balance in the current epoch.
    /// @param nextEpochBalance balance in `currentEpoch+1`.
    struct StoredBalance {
        uint64 currentEpoch;
        uint96 currentEpochBalance;
        uint96 nextEpochBalance;
    }

    /// @dev Statuses that stake can exist in.
    ///      Any stake can be (re)delegated effective at the next epoch
    ///      Undelegated stake can be withdrawn if it is available in both the current and next epoch
    enum StakeStatus {
        UNDELEGATED,
        DELEGATED
    }

    /// @dev Info used to describe a status.
    /// @param status of the stake.
    /// @param poolId Unique Id of pool. This is set when status=DELEGATED.
    struct StakeInfo {
        StakeStatus status;
        bytes32 poolId;
    }

    /// @dev Struct to represent a fraction.
    /// @param numerator of fraction.
    /// @param denominator of fraction.
    struct Fraction {
        uint256 numerator;
        uint256 denominator;
    }

    /// @dev Holds the metadata for a staking pool.
    /// @param initialized True iff the balance struct is initialized.
    /// @param operator of the pool.
    /// @param operatorShare Fraction of the total balance owned by the operator, in ppm.
    struct Pool {
        bool initialized;
        address payable operator;
        uint32 operatorShare;
    }
}
