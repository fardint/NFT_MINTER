// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";


contract Minter is ERC721Enumerable('ECHOSwap','ECHO') {
    function mint(int _amount, address _reciverAddress) public returns (bool){
        for(uint i = _amount; i < ERC721Enumerable.totalSupply() + _amount; i++)
        ERC721Enumerable._mint(_increment, _reciverAddress);

        return true;
    }
}