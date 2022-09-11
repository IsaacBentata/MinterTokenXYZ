// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;

/// author: Fair.xyz

interface IMinterTokenXYZ {

    /**
     * @dev Returns for a given token ID the original smart contract to which it maps
     */
    function viewTokenProvenance(uint256 tokenId) external view returns(address);

     /**
     * @dev Returns for a given user address and contract address whether the user address is a minter 
     * and how many they minted
     */
    function viewMinterCount(address owner, address contractAdd) external view returns(uint256);

    /**
     * @dev Returns for a given user address and ERC721 contract address whether the user address is diamond-handing
     */
    function viewDiamondHands721(address owner, address contractAdd) external view returns(bool);

    /**
     * @dev Returns for a given user address and ERC1155 contract address whether the user address is diamond-handing
     * The token ID input must be the ERC1155 token that the user still holds in the ERC1155 contract
     */
    function viewDiamondHands1155(address owner, address contractAdd, uint256 tokenId) external view returns(bool);

}