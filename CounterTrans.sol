//SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

mapping (address => uint256) private _tick;

    // Mapping from account addresses to a mapping of spender addresses to an amount of allowance.
    mapping (address => mapping (address => uint256)) private _allowances;// SPDX-License-Identifier: MIT

contract TransactionCounter {
    uint256 private _counter;
    constructor() public {
        _counter = 0;
    }
    // Increments the counter by 1, and return the new counter value
    function tick() public returns(uint256) {
        _counter += 1;
        return _counter;
    }
    // Returns the current value of the counter:
    function counter() public view returns(uint256) {
        return _counter;
    }
}
