// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NbaToddlers is ERC721 {
    uint256 public constant MAX_SUPPLY = 10;
    uint256 public tokenSupply;

    constructor() ERC721("NBA Toddlers", "NBAT") {}

    function mint() external {
        require(tokenSupply < MAX_SUPPLY, "ERC721: all NFTs are minted.");
        _mint(msg.sender, tokenSupply);
        tokenSupply++;
    }

    function _baseURI() internal pure override returns (string memory) {
        return "ipfs://QmeqDTHvUoKjiKvRCnvc3fX9b5qPQc1c399JF8sEW5RW4n/";
    }
}