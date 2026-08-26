# floorDiv(\_:\_:)
床関数
```
func floorDiv(
	_ x: Int
	_ y: Int
) -> Int?
```
### Parameters
$` \lfloor \frac{a}{b} \rfloor `$ を求めたい場合、`floorDiv(a, b)`のように渡してください。
### Discussion
分子と分母を表す整数を引数に渡すと、それらが示す分数を床関数に渡した際の計算結果を得ることができます。
```
let b = floorDiv(5,3) // 1
```
分母を示す第二引数に、`0`を渡すと、`nil`を返します。
```
let b = floorDiv(2,0) // nil
```
負の分数に対しても、適切に求めることができます。$` \lfloor - \frac{5}{3} \rfloor `$を求めたい場合、`floorDiv(-5, 3)`または、`floorDiv(5, -3)`を渡してください。
### Examples
- [ABC465 D - X to Y](https://atcoder.jp/contests/abc465/submissions/78503490)
### See Also
- [ceilDiv(\_:\_:) | Math/floor_ceil.swift](ceil.md)