import Testing

@testable import ACLibrary

// Write your test here and use APIs like `#expect(...)` to check expected conditions.
// Swift Testing Documentation
// https://developer.apple.com/documentation/testing
@Test func MathTest() {
    // modint.swift
    let x = ModInt(15, 2)
    #expect(x == 499_122_184)
    let y = ModInt(10)
    #expect(y == 10)

    // pow.swift
    #expect(rep_pow2(2, 3) == 8)
    #expect(rep_pow2(2, 10) == 1024)

    // gcd_lcm.swift
    #expect(gcd(2, 3) == 1)
    #expect(lcm(2, 3) == 6)
    #expect(gcd(18, 3) == 3)
    #expect(lcm(18, 3) == 18)
    #expect(gcd(12, 18) == 6)
    #expect(lcm(12, 18) == 36)
    #expect(lcm(4, 5, 8, 12, 9) == 360)
}

@Test func CastTest() {
    // cast.swift
    let ar1 = ["12", "33", "31"]
    #expect(genericArrayToInt(ar1) == 123331)
    let ar2 = ["1", "2", "3", "4"]
    #expect(genericArrayToInt(ar2) == 1234)
    let ar3 = ["1", "a", "3"]
    #expect(genericArrayToInt(ar3) == nil)
}
