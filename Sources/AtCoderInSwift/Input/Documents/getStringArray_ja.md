# getStringArray(gap:)
一行の入力を分割して、文字列配列として取得します。

```swift
func getStringArray(gap: String = " ") -> [String]
```

### Discussion
`gap` に指定した1文字を区切りとして入力行を分割します。`gap` の既定値は半角スペースです。

### Usage
```swift
let words = getStringArray() // 入力: aaa bbb ccc -> ["aaa", "bbb", "ccc"]
let csvWords = getStringArray(gap: ",") // 入力: aa,bb,cc -> ["aa", "bb", "cc"]
```
