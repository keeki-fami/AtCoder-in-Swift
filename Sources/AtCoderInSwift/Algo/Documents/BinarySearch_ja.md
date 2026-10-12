# BinarySearch
配列の要素検索と、判定条件に基づく二分探索を行う構造体です。

### Discussion
通常の初期化では、配列を指定した順序でソートして保持します。境界値を指定する初期化では、探索範囲と最小化・最大化の種別を設定します。

#### init(arr: [Element]) where Element: Comparable
配列を昇順にソートして検索用インスタンスを作成します。

#### init(arr: [Element], sortOption: (Element, Element) -> Bool)
`sortOption` に従って配列をソートして検索用インスタンスを作成します。

#### init(arr: [Element], high: Int, low: Int, isSolveMininMax: Bool) where Element: Comparable
昇順にソートしてから境界値を設定します。実装では `arr` を保持せず、`search` の判定クロージャーに渡される配列は空です。

#### init(arr: [Element], high: Int, low: Int, isSolveMininMax: Bool, sortOption: (Element, Element) -> Bool)
`sortOption` に従ってソートしてから境界値を設定します。実装では `arr` を保持せず、`search` の判定クロージャーに渡される配列は空です。

#### find(_ x: Element) -> Int? where Element: Comparable
自然順序でソートされた配列から要素を検索します。見つかった場合はインデックスを返し、見つからない場合は `-1` を返します。宣言上の戻り値はオプショナルですが、実装は `nil` を返しません。カスタム順序で初期化した場合も、検索処理は自然順序での昇順を前提にしています。

#### search(_ body: ([Element], Int, Int, Int) -> Bool) -> Int
境界値指定付きの初期化で設定した範囲を、判定クロージャーを使って二分探索します。クロージャーには `(配列, low, high, middle)` が渡されます。`isSolveMininMax` が `true` の場合は最小値の最大化として `high` を返し、`false` の場合は最大値の最小化として `low` を返します。境界値を設定していない場合、または探索後に `high` か `low` の少なくとも一方が初期値から変化していない場合は `-1` を返します。

### Usage
```swift
let search = BinarySearch(arr: [2, 1, 5, 4, 6])
let index = search.find(5) // Optional(2)
let missingIndex = search.find(3) // Optional(-1)
```

境界探索では、クロージャーが `true` を返す側・返さない側の境界を、設定した `high` と `low` に整合させてください。
