[English](README.md) / Japanese
# AtCoder in Swift
[AtCoder in Swift](https://github.com/keeki-fami/AtCoder_in_Swift)は非公式のAtCoder用ライブラリです。開発は今も続いています。
# Goals
このライブラリには、以下の目標があります。
- iOSアプリ開発者がAtCoderを始める際の障壁を減らす。
- 定型的なコードの記述を減らし、アルゴリズムに集中できるようにする。<br><br>
これらを達成するために、このライブラリは以下を提供します。
- 宣言的なコーディング体験
- 競技プログラミングに特化した、様々な関数の提供
# 実装内容
## Math
|内容|例|説明|
|--|--|--|
|[`floorDiv`](./Sources/AtCoderInSwift/Math/Documents/floor_ja.md)|`floorDiv(5, 2) // 2`|床関数|
|[`ceilDiv`](./Sources/AtCoderInSwift/Math/Documents/ceil_ja.md)|`ceilDiv(5, 2) // 3`|天井関数|
|[`ModInt`](./Sources/AtCoderInSwift/Math/Documents/modint_ja.md)|`ModInt(998244354) // 1 `|$` 998244353 `$を法とするモジュロ演算|
|[`powN`](./Sources/AtCoderInSwift/Math/Documents/powN_ja.md)|`powN(2, 5) // 32 `|冪乗計算。$`a^{p}`$の計算には$` O( \log p ) `$かかる。|
|[`powMod`](./Sources/AtCoderInSwift/Math/Documents/pow_ja.md)|`powMod(2, 5, 998244353) // 32 `|冪乗計算。$`a^{p} \mod N`$の計算には$` O( \log p ) `$かかる。|
|[`nCrMod`](./Sources/AtCoderInSwift/Math/Documents/nCr_ja.md)|`nCrMod(4, 2) // 6 `|組み合わせの計算。$` {}_n C_k `$の計算には$`O( k )`$かかる。|
|[`factorialMod`](./Sources/AtCoderInSwift/Math/Documents/factorialMod_ja.md)|`factorialMod(4) // 24 `|階乗計算。$` N\leq20 `$の場合は$`O(1)`$|
|[`gcd`](./Sources/AtCoderInSwift/Math/Documents/gcd_ja.md)|`gcd(12, 8, 4) // 4 `|最大公約数。2つ以上の引数を取れる。|
|[`lcm`](./Sources/AtCoderInSwift/Math/Documents/lcm_ja.md)|`lcm(2, 3, 5, 15) // 30 `|最小公倍数。2つ以上の引数を取れる。|
## Algorithm
|内容|説明|
|--|--|
|[`DP2D`](./Sources/AtCoderInSwift/Algo/Documents/DP2D_ja.md)|二次元DP|
|[`BinarySearch`](./Sources/AtCoderInSwift/Algo/Documents/BinarySearch_ja.md)|二分探索|
# Documents
- [ドキュメント(Math)](./Sources/AtCoderInSwift/Math/README_ja.md)
- [ドキュメント(Algorithm)](./Sources/AtCoderInSwift/Algo/README_ja.md)
- [ドキュメント(Output)](./Sources/AtCoderInSwift/Output/README_ja.md)
# Contribution
もしバグやtypoを見つけた場合は、issueやPull Request大歓迎です。
# License
CC0