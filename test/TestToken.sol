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

import "truffle/Assert.sol";
import "../contracts/UnTradeableToken.sol";

contract Bob {
	UnTradeableToken token;

	function Bob(UnTradeableToken _token) {
		token = _token;
	}

	function doTransferFrom(address _from, address _to, uint256 _value) public returns (bool) {
		return token.transferFrom(_from, _to, _value);
	}
}

contract TestToken {
    UnTradeableToken token;
    Bob bob;

    function beforeEach() {
        token = new UnTradeableToken();
        bob = new Bob(token);

        token.mint(address(this), 100);
        token.approve(address(bob), 10);
    }

    function testCorrectBalance() {
        Assert.equal(token.balanceOf(address(this)), 100, "should have 100 tokens");
    }

    function testAllowance() {
    	Assert.equal(token.allowance(address(this), address(bob)), 10, "Bob should be allowed to spend 10 tokens");
    }

    function testTransferIsDisabled() {
    	Assert.equal(token.transfer(address(bob), 10), false, "transfer() should return false");
    }

    function testTransferFromIsDisabled() {
    	Assert.equal(bob.doTransferFrom(address(this), address(bob), 10), false, "transferFrom() should return false");
    }
}