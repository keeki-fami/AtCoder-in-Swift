English / [Japanese](README_ja.md)
# AtCoder in Swift
[AtCoder in Swift](https://github.com/keeki-fami/AtCoder_in_Swift) is an unofficial Swift library for AtCoder. It's continuously being improved.
# Goals
- Minimize the barrier to getting started with AtCoder for iOS developers.
- Hide routine code and let uses focus on algorithms.<br><br>
To achieve these goals, this library provides:
- A SwiftUI-like coding experience
- A variety of utility functions for AtCoderTo achieve above, this library provides you 
# 実装内容
## Math
|内容|例|説明|
|--|--|--|
|[`floorDiv`](https://github.com/keeki-fami/AtCoder-in-Swift/blob/main/Sources/ACLibrary/Math/floor_ceil.swift)|`floorDiv(5, 2) // 2`|floor function|
|[`ceilDiv`](https://github.com/keeki-fami/AtCoder-in-Swift/blob/main/Sources/ACLibrary/Math/floor_ceil.swift)|`ceilDiv(5, 2) // 3`|ceiling function|
|[`ModInt`](https://github.com/keeki-fami/AtCoder-in-Swift/blob/main/Sources/ACLibrary/Math/modint.swift)|`ModInt(998244354) // 1 `|modular arithmetic with modulus $` 998244353 `$|
|[`rep_pow2`](https://github.com/keeki-fami/AtCoder-in-Swift/blob/main/Sources/ACLibrary/Math/pow.swift)|`rep_pow2(2, 5) // 32 `|power calculation (calculate $`a^{p}`$ : $` O( \log p ) `$)|
|[`nCr`](https://github.com/keeki-fami/AtCoder-in-Swift/blob/main/Sources/ACLibrary/Math/nCr.swift)|`nCr(4, 2) // 6 `|combination ( calculate $` {}_n C_k `$ : $`O( k )`$)|
|[`factorial`](https://github.com/keeki-fami/AtCoder-in-Swift/blob/main/Sources/ACLibrary/Math/nCr.swift)|`factorial(4) // 24 `|factorial calculation. (if $` N\leq20 `$, it takes $`O(1)`$.)|
|[`gcd`](https://github.com/keeki-fami/AtCoder-in-Swift/blob/main/Sources/ACLibrary/Math/gcd_lcm.swift)|`gcd(12, 8, 4) // 4 `|GCD. You can take more than two arguments.|
|[`lcm`](https://github.com/keeki-fami/AtCoder-in-Swift/blob/main/Sources/ACLibrary/Math/gcd_lcm.swift)|`lcm(2, 3, 5, 15) // 30 `|LCM. You can take more than two arguments.|
