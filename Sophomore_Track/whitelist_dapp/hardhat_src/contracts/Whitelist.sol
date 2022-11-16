//SPDX-License-Identifier: Unlicense

/*
1. Max whitelisted adderesses
2. Hashmap of whitelisted addresses
3. Num of addresses whitelisted
4. pass 1 to constructor
5. function to add address to whielist
*/
pragma solidity ^0.8.0;

contract Whitelist {
    uint8 public maxWhitelistedAddr;

    mapping(address => bool) public whitelistedAddr;

    uint8 public numAddrWhitelisted;

    constructor(uint8 _maxWhitelistedAddr) {
        maxWhitelistedAddr = _maxWhitelistedAddr;
    }

    function addAddrToWhitelist() public {
        require(
            !whitelistedAddr[msg.sender],
            "Address already in the whitelist"
        );

        require(
            maxWhitelistedAddr > numAddrWhitelisted,
            "Maximimum whitelist limit reached"
        );

        whitelistedAddr[msg.sender] = true;
        numAddrWhitelisted += 1;
    }
}
