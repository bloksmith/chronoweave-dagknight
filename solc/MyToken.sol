// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "ERC20.sol";
import "Ownable.sol";

contract MyToken is ERC20, Ownable {
    constructor(string memory name, string memory symbol, uint256 initialSupply) ERC20(name, symbol) {
        _mint(msg.sender, initialSupply);
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}
