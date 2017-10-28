# Ethereum non-tradeable token
The following implements a solidity non tradeable token which could be used in cases where an external party (such as an Oracle) need to attribute score/rewards to users in a secure and decentralized way.
The Oracle can `mint` tokens in order to allocate them to users, users cannot transfer or loose tokens in any way, making it a perfect fit for implementing systems such as scores or reputation.

# Development
 -  To build run `truffle compile`.
 -  To run unit tests use `truffle test`.
 -  To deploy the example token just use `truffle migrate`, you may have to configure `truffle.js` first.

# Copyrights and ownership
The following project is being developed by `Eliott TEISSONNIERE` and released under an open source licence which can be found under `LICENCE.md`.

```
Implements a basic non tradeable token
Copyright (C) 2017 Eliott TEISSONNIERE <http://eliott.tech>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
```