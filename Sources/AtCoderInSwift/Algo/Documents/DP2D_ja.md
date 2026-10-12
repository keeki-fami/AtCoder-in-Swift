# DP2D
二次元の整数配列を保持し、動的計画法のループ処理を補助する構造体です。

### Discussion
イニシャライザで指定した行数・列数の配列を、指定した整数で初期化します。添字は0始まりです。

#### init(_ h: Int, _ w: Int, _ num: Int)
行数、列数、各要素の初期値を指定します。

#### subscript(i: Int, j: Int) -> Int
指定した行・列の整数値を取得または設定します。

#### loop(before: (inout [[Int]]) -> Void, body: (Int, inout [[Int]]) -> Void, complete: (inout [[Int]]) -> Void)
`before` を一度実行し、各行について `body` を実行した後、`complete` を一度実行します。各クロージャーには作業用配列への `inout` 参照が渡されます。変更は作業用コピーに対するもので、インスタンスの `table` には反映されません。

#### loop2(_:_:complete:) -> Void
`body` は `(Int, Int, inout [[Int]]) -> Void`、`loopfinish` は `(Int, inout [[Int]]) -> Void`、`complete` は `(inout [[Int]]) -> Void` のクロージャーです。
各セルについて `body(i, j, table)` を実行し、各行の最後に `loopfinish(i, table)`、全行の後に `complete(table)` を実行します。ここでもクロージャーに渡される配列は作業用コピーです。

### Usage
```swift
var dp = DP2D(2, 3, 0)
dp[0, 0] = 1
let firstValue = dp[0, 0] // 1

dp.loop(
    before: { _ in },
    body: { row, table in
        table[row][0] += 1
    },
    complete: { _ in }
)
```
