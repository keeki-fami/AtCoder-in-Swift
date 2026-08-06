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
|内容|例|説明|
|--|--|--|
|[`floorDiv`](./Sources/AClibrary/Math/floor_ceil.swift)|`floorDiv(5,2) // 2`|床関数|
|[`ceilDiv`](./Sources/AClibrary/Math/floor_ceil.swift)|`ceilDiv(5,2) // 3`|天井関数|
|[`ModInt`](./Sources/AClibrary/Math/ModInt.swift)|`ModInt(998244354) // 1 `|998244353を法とするモジュロ演算|
|[`rep_pow2`](./Sources/AClibrary/Math/pow.swift)|`rep_pow2(2,5) // 32 `|冪乗計算。$a^{p}$の計算には$O( \log p )$かかる。|