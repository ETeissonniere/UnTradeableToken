pragma solidity ^0.4.15;

import "./UnTradeableToken.sol";

/**
 * @title Example
 * @author Eliott TEISSONNIERE
 * @dev Example to demonstrate the use of an untradeable token.
 */

contract Example is UnTradeableToken {
	string public constant name = "ExampleToken";
    string public constant symbol = "ETK";
    uint8 public constant decimals = 18;
}
