# ModInt
998244353を法とする整数を表す構造体です。

### Discussion
値の生成、加算・減算・乗算・除算、等価比較、および文字列表現を提供します。内部の `value` と法 `mod` は公開されていません。

#### init(_:)
整数 `x` を受け取り、`x % 998244353` を値として保持します。

#### init(_:_:)
2つの整数 `a`, `b` を受け取り、実装上は `a` に `b` の逆元を掛けた値を保持します。`b` の逆元は繰り返し二乗法で求めます。

#### inverse()
インスタンスの値を、998244353を法とする逆元に置き換えます。

#### 演算子
`ModInt` 同士、および `ModInt` と `Int` の間に `+`、`-`、`*` の演算子が定義されています。`/` は `ModInt / ModInt`、`Int / ModInt`、`ModInt / Int` の各組み合わせが定義されています。複合代入は `ModInt += ModInt` と `ModInt += Int` が定義されています。

`==` は `ModInt == ModInt`、`ModInt == Int`、`Int == ModInt` が定義されています。`Int` との比較は整数値を法で剰余化せず、保持値とそのまま比較します。

```swift
static func + (left: ModInt, right: ModInt) -> ModInt
static func + (left: ModInt, right: Int) -> ModInt
static func + (left: Int, right: ModInt) -> ModInt
static func - (left: ModInt, right: ModInt) -> ModInt
static func - (left: Int, right: ModInt) -> ModInt
static func - (left: ModInt, right: Int) -> ModInt
static func * (left: ModInt, right: ModInt) -> ModInt
static func * (left: ModInt, right: Int) -> ModInt
static func * (left: Int, right: ModInt) -> ModInt
static func / (left: ModInt, right: ModInt) -> ModInt
static func / (left: Int, right: ModInt) -> ModInt
static func / (left: ModInt, right: Int) -> ModInt
static func == (left: ModInt, right: ModInt) -> Bool
static func == (left: ModInt, right: Int) -> Bool
static func == (left: Int, right: ModInt) -> Bool
static func += (left: inout ModInt, right: ModInt)
static func += (left: inout ModInt, right: Int)
```

#### description
`CustomStringConvertible` に準拠し、保持している `value` の文字列表現を返します。

### 注意点
`ModInt / ModInt` と `ModInt / Int` の実装は、通常の除算で右辺の逆元を使う処理になっていません。意図したモジュロ除算として利用できることは保証されないため、これらの演算子の使用には注意してください。`Int / ModInt` と `inverse()` は、実装上、右辺の逆元を使います。

### Usage
```swift
let a = ModInt(4)
let b = ModInt(1, 2)
let sum = a + b

var inverse = ModInt(2)
inverse.inverse()
let text = String(describing: a)
```
