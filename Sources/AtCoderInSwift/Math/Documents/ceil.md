# ceilDiv(\_:\_:)
ceiling function
```
func ceilDiv(
	_ x: Int
	_ y: Int
) -> Int?
```
### Parameters
To calculate $` \lceil \frac{a}{b} \rceil `$, pass arguments such as `ceilDiv(a, b)`.
### Discussion
To calculate division rounded up, pass arguments to `ceilDiv`.
```
let b = ceilDiv(5,3) // 2
```
if second argument is `0`, `ceilDiv` returns `nil`.
```
let b = ceilDiv(2,0) // nil
```
`ceilDiv` returns correct answer with negative arguments. To calculate $` \lceil - \frac{5}{3} \rceil `$, call `ceilDiv(5, -3)` or `ceilDiv(-5, 3)`.
### See Also
- [floorDiv(\_:\_:) | Math/floor_ceil.swift](floor.md)