[English](README.md) / Japanese
# AtCoder in Swift
[AtCoder in Swift](https://github.com/keeki-fami/AtCoder_in_Swift)は非公式のAtCoder用ライブラリです。開発は今も続いています。
# Goals
このライブラリには、以下の目標があります。
- iOSアプリ開発者がAtCoderを始める際の障壁を減らす。
- 定型的なコードの記述を減らし、アルゴリズムに集中できるようにする。<br><br>
これらを達成するために、このライブラリは以下を提供します。
- SwiftUIを意識した宣言的なコーディング体験
- 競技プログラミングに特化した、様々な関数の提供
# 実装内容
## Math
|内容|例|説明|
|--|--|--|
|[`floorDiv`](https://github.com/keeki-fami/AtCoder-in-Swift/blob/main/Sources/ACLibrary/Math/floor_ceil.swift)|`floorDiv(5, 2) // 2`|床関数|
|[`ceilDiv`](https://github.com/keeki-fami/AtCoder-in-Swift/blob/main/Sources/ACLibrary/Math/floor_ceil.swift)|`ceilDiv(5, 2) // 3`|天井関数|
|[`ModInt`](https://github.com/keeki-fami/AtCoder-in-Swift/blob/main/Sources/ACLibrary/Math/modint.swift)|`ModInt(998244354) // 1 `|$` 998244353 `$を法とするモジュロ演算|
|[`powN`](https://github.com/keeki-fami/AtCoder-in-Swift/blob/main/Sources/ACLibrary/Math/pow.swift)|`powN(2, 5) // 32 `|冪乗計算。$`a^{p}`$の計算には$` O( \log p ) `$かかる。|
|[`nCr`](https://github.com/keeki-fami/AtCoder-in-Swift/blob/main/Sources/ACLibrary/Math/nCr.swift)|`nCr(4, 2) // 6 `|組み合わせの計算。$` {}_n C_k `$の計算には$`O( k )`$かかる。|
|[`factorial`](https://github.com/keeki-fami/AtCoder-in-Swift/blob/main/Sources/ACLibrary/Math/nCr.swift)|`factorial(4) // 24 `|階乗計算。$` N\leq20 `$の場合は$`O(1)`$|
|[`gcd`](https://github.com/keeki-fami/AtCoder-in-Swift/blob/main/Sources/ACLibrary/Math/gcd_lcm.swift)|`gcd(12, 8, 4) // 4 `|最大公約数。2つ以上の引数を取れる。|
|[`lcm`](https://github.com/keeki-fami/AtCoder-in-Swift/blob/main/Sources/ACLibrary/Math/gcd_lcm.swift)|`lcm(2, 3, 5, 15) // 30 `|最小公倍数。2つ以上の引数を取れる。|

## Algorithm
|内容|説明|
|--|--|
|[`DP2D`](https://github.com/keeki-fami/AtCoder-in-Swift/blob/main/Sources/ACLibrary/Algorithms/DP/Dp2D.swift)|二次元DP|
|[`BinarySearch`](https://github.com/keeki-fami/AtCoder-in-Swift/blob/main/Sources/ACLibrary/Algorithms/BinarySearch/BinarySearch.swift)|二分探索|
# Documents
- [ドキュメント(Math)](./Sources/AtCoderInSwift/Math/README_ja.md)
- [ドキュメント(Algorithm)](./Sources/AtCoderInSwift/Algo/README_ja.md)
# Contribution
もしバグやtypoを見つけた場合は、issueやPull Request大歓迎です。
# License