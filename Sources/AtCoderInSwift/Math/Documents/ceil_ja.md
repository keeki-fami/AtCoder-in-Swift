# ceilDiv(\_:\_:)
天井関数
```
func ceilDiv(
	_ x: Int
	_ y: Int
) -> Int?
```
### Parameters
$` \lceil \frac{a}{b} \rceil `$ を求めたい場合、`ceilDiv(a, b)`のように渡してください。
### Discussion
分子と分母を表す整数を引数に渡すと、それらが示す分数を天井関数に渡した際の計算結果を得ることができます。
```
let b = ceilDiv(5,3) // 2
```
分母を示す第二引数に、`0`を渡すと、`nil`を返します。
```
let b = ceilDiv(2,0) // nil
```
負の分数に対しても、適切に求めることができます。$` \lceil - \frac{5}{3} \rceil `$を求めたい場合、`ceilDiv(-5, 3)`または、`ceilDiv(5, -3)`を渡してください。
### See Also
- [floorDiv(\_:\_:) | Math/floor_ceil.swift](floor.md)