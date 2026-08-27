# lcm(\_:)
最小公倍数を求めます。
```
func lcm(
	_ val: Int...
) -> Int?
```
### Parameters
引数には正の整数を渡します。
### Discussion
引数に渡した数値の最小公倍数を求めます。
```
let num1 = gcd(18, 12) // 36
let num2 = gcd(18, 36, 54) // 108
```
引数に負の数を渡した場合や、引数に渡した数値が0個であった場合、`nil`を返します。
### See Also
- [gcd(\_:) | Math/gcd_lcm.swift](gcd_ja.md)