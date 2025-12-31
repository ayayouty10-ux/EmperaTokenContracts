// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.30;

/// @title IERC7572 - Contract-Level Metadata Interface
/// @notice Interface for contract-level metadata as defined in EIP-7572
/// @dev This interface provides a standardized way for contracts to expose metadata about themselves.
///      The metadata is typically stored as JSON and can include information such as name, description,
///      image, external links, and other contract-level properties.
/// @author EIP-7572 Authors
/// @custom:eip https://eips.ethereum.org/EIPS/eip-7572
interface IERC7572 {

    /// @notice Get the contract-level metadata URI
    /// @dev Returns a URI pointing to a JSON file containing contract-level metadata.
    ///      The JSON schema should follow the contract-level metadata standard.
    ///      This function MUST return a valid URI string or an empty string if no metadata is set.
    /// @return uri The URI string pointing to the contract metadata JSON file
    function contractURI() external view returns (string memory uri);

    /// @notice Emitted when the contract-level metadata URI is updated
    /// @dev This event MUST be emitted whenever the contract URI is changed.
    ///      Indexers and applications can listen to this event to update their cached metadata.
    event ContractURIUpdated();

}