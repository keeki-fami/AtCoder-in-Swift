English / [Japanese](README_ja.md)
# AtCoder in Swift
[AtCoder in Swift](https://github.com/keeki-fami/AtCoder_in_Swift) is an unofficial Swift library for AtCoder. It's continuously being improved.
# Goals
- Minimize the barrier to getting started with AtCoder for iOS developers.
- Hide routine code and let uses focus on algorithms.<br><br>
To achieve these goals, this library provides:
- A SwiftUI-like coding experience
- A variety of utility functions for AtCoderTo achieve above, this library provides you 
# Details
## Math
|内容|例|説明|
|--|--|--|
|[`floorDiv`](./Sources/AtCoderInSwift/Math/Documents/floor.md)|`floorDiv(5, 2) // 2`|floor function|
|[`ceilDiv`](./Sources/AtCoderInSwift/Math/Documents/ceil.md)|`ceilDiv(5, 2) // 3`|ceiling function|
|[`ModInt`](./Sources/AtCoderInSwift/Math/Documents/modint.md)|`ModInt(998244354) // 1 `|modular arithmetic with modulus $` 998244353 `$|
|`powN`|`rep_pow2(2, 5) // 32 `|power calculation (calculate $`a^{p}`$ : $` O( \log p ) `$)|
|`powN`|`rep_pow2(2, 5, 998244353) // 32 `|power calculation (calculate $`a^{p} \mod N`$ : $` O( \log p ) `$)|
|[`nCrMod`](./Sources/AtCoderInSwift/Math/Documents/nCr.md)|`nCr(4, 2, 998244353) // 6 `|combination ( calculate $` {}_n C_r \mod M`$ : $`O( r )`$)|
|`factorialMod`|`factorial(4) // 24 `|factorial calculation. (if $` N\leq20 `$, it takes $`O(1)`$.)|
|`gcd`|`gcd(12, 8, 4) // 4 `|GCD. You can take more than two arguments.|
|`lcm`|`lcm(2, 3, 5, 15) // 30 `|LCM. You can take more than two arguments.|
## Algorithm
|内容|説明|
|--|--|
|[`DP2D`](./Sources/AtCoderInSwift/Algo/Documents/DP2D.md)|two dimentional DP|
|`BinarySearch`|binary search|
# Documents
- [Document(Math)](./Sources/AtCoderInSwift/Math/README.md)
- [Document(Algorithm)](./Sources/AtCoderInSwift/Algo/README.md)
# Contribution
I appreciate issues/PRs if you report my mistakes like typo, bugs and so on.
# License
CC0