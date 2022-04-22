// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import "./tokens/ERC20.sol";
import "./tokens/ERC4626.sol";

contract GearboxVault is ERC4626 {
    address immutable creditAccount;

    constructor(
        ERC20 _asset,
        string memory _name,
        string memory _symbol
    ) ERC4626(_asset, _name, _symbol) {
        asset = _asset;
    }

    ///@notice return the total amounts of assets
    ///@return total amount of assets
    function totalAssets() public view override returns (uint256) {
        return 1e18; //max amount of underlying asset managed by smart contract
    }

    function beforeWithdraw(uint256 assets, uint256 shares) internal override {
        require(true);
    }

    function afterDeposit(uint256 assets, uint256 shares) internal override {
        require(true);
    }
}