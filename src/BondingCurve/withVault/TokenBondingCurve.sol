// SPDX-License-Identifier: NONE

pragma solidity 0.8.18;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC165} from "@openzeppelin/contracts/utils/introspection/ERC165.sol";

contract TokenBondingCurve is ERC20, ERC165 {

    constructor(string memory name, string memory symbol) ERC20(name, symbol) {}

    /**
     * @dev See {IERC165-supportsInterface}.
     */
     function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IERC165).interfaceId ||
        interfaceId == type(IERC20).interfaceId;
    }
}