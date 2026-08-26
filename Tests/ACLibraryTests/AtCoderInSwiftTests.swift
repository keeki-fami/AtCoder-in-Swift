import Testing

@testable import AtCoderInSwift

// Write your test here and use APIs like `#expect(...)` to check expected conditions.
// Swift Testing Documentation
// https://developer.apple.com/documentation/testing

struct ModIntTest {
    @Test func InitTest() {
        let x = ModInt(15, 2)
        #expect(x == 499_122_184)
        let y = ModInt(10)
        #expect(y == 10)
        var z = ModInt(2)
        z.inverse()
        #expect(z == 499_122_177)
    }

    @Test func AddTest() {
        let x = ModInt(15)
        let y = ModInt(17)
        #expect(x + y == 32)
    }
}

struct FloorCeilTest {
    @Test func FloorTest() {
        // TODO
        // 割り切れる 4/2 = 2
        // 割り切れない (5/2) = 2.5 → 2
        // 割り切れる -4/2 = 4/-2 = -2
        // 割り切れない -5/2 = 5/-2 = -2.5 → -3
        // 分母が0 4/0 = nil
        #expect(floorDiv(4, 2) == 2)
        #expect(floorDiv(5, 2) == 2)
        #expect(floorDiv(-4, 2) == floorDiv(4, -2))
        #expect(floorDiv(-4, 2) == -2)
        #expect(floorDiv(-5, 2) == floorDiv(5, -2))
        #expect(floorDiv(-5, 2) == -3)
        #expect(floorDiv(4, 0) == nil)
    }

}

struct PowTest {
    @Test func powTest() {
        #expect(powN(2, 0) == 1)
        #expect(powMod(2, 3, 988_244_353) == 8)
        #expect(powMod(2, 10, 998_244_353) == 1024)
    }
}
@Test func MathTest() {

    // gcd_lcm.swift
    #expect(gcd(2, 3) == 1)
    #expect(lcm(2, 3) == 6)
    #expect(gcd(18, 3) == 3)
    #expect(lcm(18, 3) == 18)
    #expect(gcd(12, 18) == 6)
    #expect(lcm(12, 18) == 36)
    #expect(lcm(4, 5, 8, 12, 9) == 360)

    // ceiling
    // po/po 割り切れる
    // po/po 割り切れない
    // ne/po 割り切れる
    // ne/po 割り切れない
    // ne/ne 割り切れない
    // ne/ne 割り切れる
    // R / 0 nilを返す
    #expect(ceilDiv(6, 3) == Optional(2))
    #expect(ceilDiv(6, 4) == Optional(2))
    #expect(ceilDiv(-6, 3) == Optional(-2))
    #expect(ceilDiv(-6, 4) == Optional(-1))
    #expect(ceilDiv(-6, -3) == Optional(2))
    #expect(ceilDiv(-6, -4) == Optional(2))
    #expect(ceilDiv(12, 0) == nil)

    // floor
    // po/po 割り切れる
    // po/po 割り切れない
    // ne/po 割り切れる
    // ne/po 割り切れない
    // ne/ne 割り切れない
    // ne/ne 割り切れる
    // R / 0 nilを返す
    #expect(floorDiv(12, 4) == Optional(3))
    #expect(floorDiv(12, 5) == Optional(2))
    #expect(floorDiv(-12, 4) == Optional(-3))
    #expect(floorDiv(-12, 5) == Optional(-3))
    #expect(floorDiv(-6, -3) == Optional(2))
    #expect(floorDiv(-6, -4) == Optional(1))
    #expect(floorDiv(12, 0) == nil)

}

// @Test func CastTest() {
//     // cast.swift
//     let ar1 = ["12", "33", "31"]
//     #expect(stringArrayToInt(ar1) == 123331)
//     let ar2 = ["1", "2", "3", "4"]
//     #expect(stringArrayToInt(ar2) == 1234)
//     let ar3 = ["1", "a", "3"]
//     #expect(stringArrayToInt(ar3) == nil)
// }
