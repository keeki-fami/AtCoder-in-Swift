# factorialMod(_:)
階乗を998244353で割った余りを計算します。

```
func factorialMod(
    _ n: Int
) -> Int
```

### Parameters
引数には階乗を求めたい非負整数を渡します。

### Discussion
引数に渡した整数 `n` の階乗を998244353で割った余りを求めます。
```
let num1 = factorialMod(5) // 120
let num2 = factorialMod(10) // 3628800
let num3 = factorialMod(20) // 401576539
```
0から20までの階乗については、あらかじめ計算された値を利用して計算します。
```
let num = factorialMod(0) // 1
```

### See Also
