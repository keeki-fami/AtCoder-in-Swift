# ModInt
A structure representing an integer modulo 998244353.

### Discussion
`ModInt` provides initializers, arithmetic and equality operators, and a string representation. Its stored `value` and modulus `mod` are not public.

#### init(_:)
Stores `x % 998244353` as the value.

#### init(_:_:)
Takes integers `a` and `b`. The implementation stores `a` multiplied by the modular inverse of `b`, computed using repeated squaring.

#### inverse()
Replaces the instance's value with its inverse modulo 998244353.

#### Operators
`+`, `-`, and `*` are defined for `ModInt` pairs and for mixed `ModInt`/`Int` operands. `/` is defined for `ModInt / ModInt`, `Int / ModInt`, and `ModInt / Int`. Compound assignment is provided for `ModInt += ModInt` and `ModInt += Int`.

Equality is defined for `ModInt == ModInt`, `ModInt == Int`, and `Int == ModInt`. Comparisons with `Int` compare the stored value directly without reducing the integer modulo 998244353.

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
Through `CustomStringConvertible`, returns the string representation of the stored `value`.

### Notes
The implementations of `ModInt / ModInt` and `ModInt / Int` do not use the inverse of the right-hand operand as conventional modular division would. Do not rely on these overloads for modular division. `Int / ModInt` and `inverse()` use the inverse of the right-hand value in the implementation.

### Usage
```swift
let a = ModInt(4)
let b = ModInt(1, 2)
let sum = a + b

var inverse = ModInt(2)
inverse.inverse()
let text = String(describing: a)
```
