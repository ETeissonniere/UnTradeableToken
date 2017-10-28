/**
 * Implements a basic non tradeable token
 * Copyright (C) 2017 Eliott TEISSONNIERE <http://eliott.tech>
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

pragma solidity ^0.4.15;

import "zeppelin/contracts/token/MintableToken.sol";

/**
 * @title UnTradeableToken
 * @author Eliott TEISSONNIERE
 * @dev MintableToken with neutralized transfer
 *      and transferFrom functions.
 */

contract UnTradeableToken is MintableToken {
	function transfer(address _to, uint256 _value) public returns (bool) {
		// Suppress warnings
		_to; _value;

		// Disabled
		return false;
	}

	function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
		// Suppress warnings
		_from; _to; _value;

		// Disabled
		return false;
	}
}