# print2DArray(_:gap:)
二次元配列の各要素を指定した区切り文字で出力します。
```Swift
func print2DArray(
    _ s: [[Any]],
    gap: String = ""
)
```
### Parameters
- `s`: 出力する二次元配列
- `gap`: 各要素の後に出力する文字列。デフォルトは空文字列です。
### Discussion
二次元配列の各行について、要素を先頭から順番に出力します。1つの行をすべて出力すると改行します。
gapを指定した場合、各要素の後に指定した文字列を出力します。
```
let array = [
    [1, 2, 3],
    [4, 5, 6]
]

print2DArray(array, gap: " ")

// 1 2 3
// 4 5 6
```
各行の最後の要素を出力した後にもgapが出力されます。
### See Also
printArray(_:gap:)