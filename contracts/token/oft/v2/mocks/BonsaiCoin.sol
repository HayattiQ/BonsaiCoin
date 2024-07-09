// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import "../OFTV2.sol";

// @dev mock OFTV2 demonstrating how to inherit OFTV2
contract BonsaiCoin is OFTV2 {
    constructor(address _layerZeroEndpoint, uint _initialSupply, uint8 _sharedDecimals) OFTV2("BONSAI COIN", "BONSAICOIN", _sharedDecimals, _layerZeroEndpoint) {
        if (_initialSupply > 0) {
            _mint(_msgSender(), _initialSupply);
        }
    }
}
