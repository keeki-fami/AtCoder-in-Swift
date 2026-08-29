# customPrintTF(_:t:f:)
引数に渡した条件式をもとに、指定した2つの文字列のいずれかを出力します。
```Swift
func customPrintTF(
    _ judge: () -> Bool,
    t: String,
    f: String
)
```
### Parameters
- `judge`: Bool型を返す関数
- `t`: judgeがtrueを返した場合に出力する文字列
- `f`: judgeがfalseを返した場合に出力する文字列
### Discussion
条件式がtrueを返す場合、tに指定した文字列を出力します。そうでない場合は、fに指定した文字列を出力します。
```Swift
let num = 3

customPrintTF({ num % 2 == 0 }, t: "Even", f: "Odd") // Odd
```
### See Also