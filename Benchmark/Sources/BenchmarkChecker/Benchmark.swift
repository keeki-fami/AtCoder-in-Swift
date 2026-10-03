// The Swift Programming Language
// https://docs.swift.org/swift-book
import AtCoderInSwift
import Benchmark

let testStrings: [String] = [
    // 1. 最小
    String(repeating: "a", count: 1),

    // 2. 全て同じ文字
    String(repeating: "a", count: 300_000),

    // 3. 2文字を交互に繰り返す
    String((0..<300_000).map { $0 % 2 == 0 ? "a" : "b" }),

    // 4. 3文字を交互に繰り返す
    String((0..<300_000).map {
        ["a", "b", "c"][$0 % 3]
    }),

    // 5. 短いランが大量に続く
    String((0..<300_000).map {
        $0 % 10 < 5 ? "a" : "b"
    }),

    // 6. ランの長さが徐々に変化
    String((0..<300_000).map {
        ($0 / 100) % 2 == 0 ? "a" : "b"
    }),

    // 7. アルファベットを循環
    String((0..<300_000).map {
        Character(UnicodeScalar(97 + ($0 % 26))!)
    }),

    // 8. ほぼランレングス圧縮できない文字列
    String((0..<300_000).map {
        Character(UnicodeScalar(33 + ($0 % 94))!)
    }),

    // 9. 大きなランと小さなランが混在
    String((0..<300_000).map {
        switch $0 % 10_000 {
        case 0..<8_000: return "a"
        case 8_000..<9_000: return "b"
        case 9_000..<9_900: return "c"
        default: return "d"
        }
    }),

    // 10. ランダムに近い文字列
    String((0..<300_000).map {
        let x = ($0 &* 1_664_525 &+ 1_013_904_223) % 26
        return Character(UnicodeScalar(97 + x)!)
    })
]

benchmark("length: 1") {
    let str = testStrings[0]
    let data = runlengthEncode(str)
}

benchmark("length: 1, all same character") {
    let str = testStrings[1]
    let data = runlengthEncode(str)
}

benchmark("length: 1, random Characters") {
    let str = testStrings[9]
    let data = runlengthEncode(str)
}
Benchmark.main()