# gcd(\_:)
最大公約数を計算します。
```
func gcd(
	_ val: Int...
) -> Int?
```
### Parameters
引数には正の整数を渡します。
### Discussion
引数に渡した数値の最大公約数を求めます。
```
let num1 = gcd(18, 12) // 6
let num2 = gcd(18, 36, 54) // 9
```
引数に負の数を渡した場合や、引数に渡した数値が0個であった場合、`nil`を返します。
### See Also
- [lcm(\_:) | Math/gcd_lcm.swift](lcm_ja.md)