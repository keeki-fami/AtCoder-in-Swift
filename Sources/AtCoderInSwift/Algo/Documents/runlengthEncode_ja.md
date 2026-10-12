# runlengthEncode(_:)
文字列を連長圧縮し、連続する同じ文字とその出現回数の配列を返します。

### Discussion
文字列を先頭から走査し、同じ `Character` が連続している区間ごとに `(文字, 個数)` を返します。空文字列の場合は `nil` を返します。

#### runlengthEncode(_ s: String) -> [(Character, Int)]?
連長圧縮する文字列を受け取ります。空でない文字列では、各連続区間について文字とその連続数を含む配列を返します。

### Usage
```swift
let encoded = runlengthEncode("aaabbc") // Optional([("a", 3), ("b", 2), ("c", 1)])
let empty = runlengthEncode("") // nil
```
