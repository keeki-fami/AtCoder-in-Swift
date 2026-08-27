# powMod(\_:\_:\_:)
法を998244353とした、冪乗計算を行います。
```
func powMod(
	_ a: Int
	_ po: Int
	_ mod: Int?
) -> Int
```
### Parameters
- a: 底
- po: 指数部
- mod: 法
### Discussion
$`a^{b} \pmod c`$を計算したい場合は、`powMod(a, b, c)`のように呼び出してください。
モジュロ演算を行わずに冪乗計算をしたい場合は、`powN(_:_:)`を使用してください。(その場合は、オーバーフローに注意してください。)
```
let num1 = powMod(2, 5, 100) // 32
let num2 = powMod(3, 3, 10) // 7
```
内部では、繰り返し二乗法が用いられています。時間計算量は、$`a^{N}`$乗の場合、$` O(logN)`$です。
### See Also
- [powN(\_:\_:) | Math/pow.swift](powN_ja.md)