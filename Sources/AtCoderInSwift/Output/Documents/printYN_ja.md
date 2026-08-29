# printYN(\_:)
引数に渡した条件式をもとに`Yes`または`No`を返します。
```
func printYN(
	_ judge: () -> Bool
)
```
### Parameters
- judge: `Bool`型を返す関数

### Discussion
条件式が`true`を返す場合、`Yes`を出力します。そうでない場合は、`No`を出力します。
```
let num = 3
printYN({num%2 == 0}) // No
```
### See Also