# getIntArray(gap:)
一行の入力から整数を分割して、整数配列として取得します。

```swift
func getIntArray(gap: String = " ") -> [Int]
```

### Discussion
`gap` に指定した1文字を区切りとして入力行を分割し、各要素を `Int` に変換します。`gap` の既定値は半角スペースです。入力が整数として解釈できない場合は、強制アンラップにより実行時エラーになります。

### Usage
```swift
let values = getIntArray() // 入力: 1 2 3 -> [1, 2, 3]
let csvValues = getIntArray(gap: ",") // 入力: 4,5,6 -> [4, 5, 6]
```
