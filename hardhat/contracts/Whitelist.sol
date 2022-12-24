// Spdx-License-Identifier: Unlicensed
// Current Deployed Address: 0xF7C5fB3660f67A941f271E9E9507b3CE7ab441D5
pragma solidity ^0.8.17;

contract Whitelist {
    uint8 public maxWhitelistedAddresses;

    mapping(address => bool) public whitelistedAddresses;

    uint8 public numAddressesWhitelisted;

    constructor(uint8 _maxWhitelistedAddresses) {
        maxWhitelistedAddresses = _maxWhitelistedAddresses;
    }

    function addAddressToWhitelist() public {
        require(
            whitelistedAddresses[msg.sender] == false,
            "Address Already Whitelisted"
        );

        require(
            numAddressesWhitelisted < maxWhitelistedAddresses,
            "Maximum Limit Reached"
        );

        whitelistedAddresses[msg.sender] = true;
        numAddressesWhitelisted += 1;
    }
}
