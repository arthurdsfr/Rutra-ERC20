// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract RutraToken is ERC20, ERC20Permit, Ownable {

    // ==== 1. Property Variables ==== //

    uint256 public maxRutra = 10000 * 10 ** decimals();  // Limite maximale de tokens

    // ==== 2. Lifecycle Methods ==== //

    constructor() ERC20("RutraToken", "RUTRA") ERC20Permit("RutraToken") Ownable(msg.sender) {
        _mint(msg.sender, 100 * 10 ** decimals());
    }

    // ==== 3. Minting/Burning functions ==== //

    function mint(address _to, uint256 _amount) public onlyOwner {
    require(totalSupply() + _amount <= maxRutra, "total supply 100% minted");
    _mint(_to, _amount);
}

    function burn(uint256 _amount) public onlyOwner {
    _burn(msg.sender, _amount);
    }
 
    // ==== 4. Others functions ==== //

}

