# floorDiv(\_:\_:)
floor function
```
func floorDiv(
	_ x: Int
	_ y: Int
) -> Int?
```
### Discussion
To calculate $` \lfloor \frac{a}{b} \rfloor `$, call `floorDiv(a, b)`.
```
let b = floorDiv(5,3) // 1
```
if second argument is `0`, `floorDiv` returns `nil`.
```
let b = floorDiv(2,0) // nil
```
`floorDiv` works correctly when one or both arguments are negative.
### Examples
- [ABC465 D - X to Y](https://atcoder.jp/contests/abc465/submissions/78503490)
### See Also
- [ceilDiv(\_:\_:) | Math/floor_ceil.swift](ceil.md)