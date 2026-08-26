# BinarySearch
二分探索の宣言的な実装を補助します。
### Discussion
二分探索の実装の際に使用できます。定型的な実装部分を減らし、宣言的な実装を補助します。
以下のメソッドを実装しています。
#### find(_ x: Element) -> Int? where Element: Comparable
要素xをリストの中から探します。見つからない場合、`nil`を返します。`Element`が`Comparable`に準拠している場合のみ使用できます。
#### search(_ body: ([Element], Int, Int, Int) -> Bool) -> Int
引数に渡された判定条件を元に、二分探索を行います。最大値の最小化(最小値の最大化)を行う問題を解く際に使用を検討します。
### Usage
初期化を行う際に、要素に使用する型を指定してください。
```Swift
var arr = [2, 1, 5, 4, 6]
let binarySearch = BinarySearch<Int>(arr: arr)
```
Int型のように`Comparable`に準拠している場合、`find`メソッドを使用できます。
```Swift
let num1 = binarySearch.find(3) // Optional(nil)
let num2 = binarySearch.find(5) // Optional(2)
```

### Example
- [ABC463 D - Maximize the Gap](https://atcoder.jp/contests/abc463/submissions/78713093)