# powN(\_:\_:)
冪乗計算をします。
```
func powN(
    _ a: Int,
    _ po: Int
) -> Int
```
### Parameters
第一引数に底を表す整数、第二引数に指数を表す整数を渡します。
### Discussion
繰り返し二乗法を用いて求めます。
```
let num1 = powN(2, 10) // 1024
let num2 = powN(3, 4) // 81
```
$`a^{N}`$について、計算量は $O(\log N)$ です。
### See Also
- [powMod(\_:\_:\_:) | Math/pow.swift](pow_ja.md)