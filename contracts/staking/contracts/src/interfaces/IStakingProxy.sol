/*

  Copyright 2018 ZeroEx Intl.

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


interface IStakingProxy /* is IStaking */
{

    /// @dev Emitted by StakingProxy when a staking contract is set.
    /// @param newStakingContractAddress Address of newly attached staking contract.
    event StakingContractSet(
        address newStakingContractAddress
    );

    /// @dev Delegates calls to the staking contract, if it is set.
    // solhint-disable no-complex-fallback
    function ()
        external
        payable;

    /// @dev Attach a staking contract; future calls will be delegated to the staking contract.
    /// Note that this is callable only by this contract's owner.
    /// @param _stakingContract Address of staking contract.
    function setStakingContract(address _stakingContract)
        external;
}
