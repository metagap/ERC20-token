// SPDX-License-Identifier: MIT
pragma solidity^0.8.5;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract Mfirsttoken is ERC20 {
    address public admin;
    
    constructor() ERC20('My Token','Duo') {
        _mint(msg.sender, 10**18);
        admin = msg.sender;
    }


    function mint(address to, uint256 amount) external{
        require(to!=address(0),"Minting to a null address!");
        _mint(to,amount);
    }

    function burn(uint256 bamount) external{
        _burn(admin, bamount);
    }

    function transfer(address sender, address recipient, uint256 amount) external{
        _transfer(sender, recipient, amount);
    }
}
