// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract NFT is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    address public owner;

    constructor() ERC721("Seoul Web3.0 Festival POAP", "SWFPOAP") {
        owner = msg.sender;
    }

    function createToken() public returns (uint) {
        _tokenIds.increment();
        uint256 newItemId = _tokenIds.current();
        string
            memory tokenURI = "https://moccasin-brainy-limpet-141.mypinata.cloud/ipfs/QmXB8CjMskd5THZasEek4FrsQHkeSmGgFstwVunkPbhFBF";
        _mint(msg.sender, newItemId);
        _setTokenURI(newItemId, tokenURI);
        return newItemId;
    }
}
