# ModInt
A structure that supports calculation modulo 998244353. It supports modular arithmetic with fractions.
### Usage
Initializer are `ModInt(_:)` and `ModInt(_:_:)`.
```
let a = ModInt(4) // 4
let b = ModInt(1, 2) // 499122177
```
`ModInt` supports the four basic arithmetic operations.
```
let c = ModInt(4) + ModInt(3) // 7
let d = ModInt(1) + ModInt(998244352) // 0
```
`ModInt` supports calculation with `Int` values. The return type is `ModInt`.
```
let e = 4 + ModInt(3) // 7
let f = ModInt(1) + 998244352 // 0
```
To replace a `ModInt` value with its multiplicative inverse, call `.inverse()`.
```
var g = ModInt(2) // 2
g.inverse() // 499122177 
```
### Examples
- [ABC471 E - Sum of Square of Sum](https://atcoder.jp/contests/abc471/submissions/78500565)
### See Also