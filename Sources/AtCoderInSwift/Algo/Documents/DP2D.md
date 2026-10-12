# DP2D
A structure that stores a two-dimensional integer array and provides closures for dynamic-programming loops.

### Discussion
The initializer creates an array with the specified number of rows and columns, filling every element with the specified integer. Indices are zero-based.

#### init(_ h: Int, _ w: Int, _ num: Int)
Creates the array from its row count, column count, and initial value.

#### subscript(i: Int, j: Int) -> Int
Gets or sets the integer at the specified row and column.

#### loop(before: (inout [[Int]]) -> Void, body: (Int, inout [[Int]]) -> Void, complete: (inout [[Int]]) -> Void)
Runs `before` once, `body` once for each row, and `complete` once afterward. Each closure receives an `inout` reference to a working array. Changes are made to a copy and are not written back to the instance's stored table.

#### loop2(_:_:complete:) -> Void
`body` has type `(Int, Int, inout [[Int]]) -> Void`, `loopfinish` has type `(Int, inout [[Int]]) -> Void`, and `complete` has type `(inout [[Int]]) -> Void`.
Runs `body(i, j, table)` for every cell, `loopfinish(i, table)` after each row, and `complete(table)` after all rows. The closures operate on a working copy as well.

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
