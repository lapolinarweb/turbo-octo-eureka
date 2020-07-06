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

pragma solidity ^0.5.5;
pragma experimental ABIEncoderV2;

import "../src/Exchange.sol";


// solhint-disable no-empty-blocks
contract TestExchangeInternals is
    Exchange
{
    constructor (uint256 chainId)
        public
        Exchange(chainId)
    {}

    /// @dev Adds properties of both FillResults instances.
    ///      Modifies the first FillResults instance specified.
    ///      Note that this function has been modified from the original
    //       internal version to return the FillResults.
    /// @param totalFillResults Fill results instance that will be added onto.
    /// @param singleFillResults Fill results instance that will be added to totalFillResults.
    /// @return newTotalFillResults The result of adding singleFillResults to totalFilResults.
    function addFillResults(FillResults memory totalFillResults, FillResults memory singleFillResults)
        public
        pure
        returns (FillResults memory)
    {
        _addFillResults(totalFillResults, singleFillResults);
        return totalFillResults;
    }

    /// @dev Calculates amounts filled and fees paid by maker and taker.
    /// @param order to be filled.
    /// @param takerAssetFilledAmount Amount of takerAsset that will be filled.
    /// @return fillResults Amounts filled and fees paid by maker and taker.
    function calculateFillResults(
        Order memory order,
        uint256 takerAssetFilledAmount
    )
        public
        pure
        returns (FillResults memory fillResults)
    {
        return _calculateFillResults(order, takerAssetFilledAmount);
    }

    /// @dev Updates state with results of a fill order.
    /// @param order that was filled.
    /// @param takerAddress Address of taker who filled the order.
    /// @param orderTakerAssetFilledAmount Amount of order already filled.
    /// @return fillResults Amounts filled and fees paid by maker and taker.
    function updateFilledState(
        Order memory order,
        address takerAddress,
        bytes32 orderHash,
        uint256 orderTakerAssetFilledAmount,
        FillResults memory fillResults
    )
        public
    {
        _updateFilledState(
            order,
            takerAddress,
            orderHash,
            orderTakerAssetFilledAmount,
            fillResults
        );
    }
}
