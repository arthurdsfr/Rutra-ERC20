// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract RutraToken is ERC20, ERC20Permit, Ownable {
    constructor() ERC20("RutraToken", "RUTRA") ERC20Permit("RutraToken") Ownable(msg.sender) {

    }

    function mint(address _to, uint256 amount) public onlyOwner {
    _mint(_to, amount);
}


}

