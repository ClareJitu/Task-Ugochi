// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract RueToken is ERC20, Ownable {
    uint256 public rate = 1000;

    constructor() ERC20("RueToken", "RTK") {
        _mint(msg.sender, 1000000);
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
    function buyToken(address receiver) public payable{
        buyToken(receiver);
    }
    function balanceOf(address receiver) public view virtual override returns (uint256){   
        return balanceOf(receiver);

  }
}