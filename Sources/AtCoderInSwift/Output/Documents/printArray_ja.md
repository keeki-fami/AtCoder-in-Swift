# printArray(_:gap:)
配列の各要素を指定した区切り文字で出力します。
```Swift
func printArray(
    _ l: [Any],
    gap: String = ""
)
```

### Parameters
- `l`: 出力する要素を格納した配列
- `gap`: 各要素の後に出力する文字列。デフォルトは空文字列です。

### Discussion
配列の各要素を先頭から順番に出力します。
gapを指定した場合、各要素の後に指定した文字列を出力します。
```Swift
printArray([1, 2, 3]) // 123
printArray([1, 2, 3], gap: " ") // 1 2 3
printArray(["A", "B", "C"], gap: ",") // A,B,C,
```
最後の要素を出力した後にもgapが出力されます。
### See Also
