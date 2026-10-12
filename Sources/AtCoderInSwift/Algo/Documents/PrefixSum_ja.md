# PrefixSum
整数配列の累積和を保持し、区間和を取得する構造体です。

### Discussion
要素数が1以上の配列を初期値として受け取ります。区間の添字は0始まりで、2つの添字を使う区間指定は半開区間 `[i, j)` です。

#### init(_ list: [Int])
累積和を計算する配列を指定します。空配列を渡すと `precondition` により実行が停止します。

#### subscript(i: Int, j: Int) -> Int
`[i, j)` に含まれる要素の合計を返します。

#### subscript(i: Int) -> Int
累積和配列の指定位置の値を取得または設定します。元の入力配列の要素を直接取得・更新する API ではありません。

### Usage
```swift
let prefixSum = PrefixSum([1, 4, 5, 9])
let rangeSum = prefixSum[1, 3] // 9 (4 + 5)
let prefixValue = prefixSum[3] // 10 (1 + 4 + 5)
```

区間指定では `0 <= i <= j <=` 配列の要素数となる添字を使用してください。
