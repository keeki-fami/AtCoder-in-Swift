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
#### usage
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
#### examples
- [ABC471 E - Sum of Square of Sum](https://atcoder.jp/contests/abc471/submissions/78500565)

## nCr.swift
`nCrMod(n:r:mod:)`: `mod`を法とした組み合わせ計算を行います。
#### parameters
- `n`: 組み合わせ計算を行う集合のサイズ
- `r`: n個の要素を持つ集合から選ぶ数
- `mod`: 法とする数 
#### examples
- [ABC471 E - Sum of Square of Sum](https://atcoder.jp/contests/abc471/submissions/78500565)