[English](README.md) / Japanese
# AtCoder-in-Swift/Math
このディレクトリには、計算に関係がある実装をまとめています。
## pow.swift
繰り返し２乗法を用いた冪乗計算を行います。$a^{p}$について、$O(log(p))$で計算が可能です。
```
let num1 = rep_pow2(2, 15) // 32768
let num2 = rep_pow2_mod(2, 15, 2) // 第三引数で法とする整数を指定する。
let num3 = rep_pow2_mod(2, 15) // 何も指定しない場合、法を998244353とします。
```
## ModInt.swift
法を998244353とした整数型です。分数を用いたモジュロ演算にも対応しています。
```
let num1 = ModInt(2) // 2
let num2 = ModInt(998244352) // 998244352
let num3 = num1 + num2 // 足し算にも対応
print(num3) // 1
let num4 = ModInt(1, 2) // 1/2に対してモジュロ演算を行う。
print(num4) // 499122177
```