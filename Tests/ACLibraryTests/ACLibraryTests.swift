import Testing
@testable import ACLibrary

@Test func example() async throws {
    // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    // Swift Testing Documentation
    // https://developer.apple.com/documentation/testing

    func MathTest() {
        // modint.swift
        let x = ModInt(15,2)
        #expect(x == 499_122_184)
        let y = ModInt(10)
        #expect(y == 10)

        // pow.swift
        #expect(rep_pow2(2, 3) == 8)
        #expect(rep_pow2(2, 10) == 1024)
    }

    func CastTest() {
        // cast.swift
        let ar = ["12", "33", "31"]
        #expect(genericArrayToInt(ar) == 123331)
    }
}
