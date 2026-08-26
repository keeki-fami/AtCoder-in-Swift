# nCrMod(n:r:mod:)
`mod`を法とした組み合わせ計算を行います。
```
func nCrMod(
	n: Int
	r: Int
	mod: Int
) -> Int
```
### Parameters
- `n`: 組み合わせ計算を行う集合のサイズ
- `r`: n個の要素を持つ集合から選ぶ数
- `mod`: 法とする数 
### Discussion
$`O(r)`$で計算が可能です。
### Examples
- [ABC471 E - Sum of Square of Sum](https://atcoder.jp/contests/abc471/submissions/78500565)
### See Also
