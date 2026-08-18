# ModInt.swift
法を998244353とした整数型です。分数を用いたモジュロ演算にも対応しています。
### Usage
定義する際は`ModInt(_:)`あるいは`ModInt(_:_:)`を使用します。
```
let a = ModInt(4) // 4
let b = ModInt(1, 2) // 499122177
```
ModInt型同士の数値と四則演算が可能です。
```
let c = ModInt(4) + ModInt(3) // 7
let d = ModInt(1) + ModInt(998244352) // 0
```
Int型の数値と四則演算が可能です。計算結果を表す数値の型は`ModInt`になります。
```
let e = 4 + ModInt(3) // 7
let f = ModInt(1) + 998244352 // 0
```
数値$`a (mod 998244353)`$が格納された`ModInt`型の変数について、`.inverse()`を呼び出すと$`\frac{1}{a} (mod 998244353)`$に変換できます。
```
var g = ModInt(2) // 2
g.inverse() // 499122177 
```
### Examples
- [ABC471 E - Sum of Square of Sum](https://atcoder.jp/contests/abc471/submissions/78500565)
### See Also