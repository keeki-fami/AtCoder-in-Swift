import Testing
@testable import ACLibrary

@Test func example() async throws {
    // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    // Swift Testing Documentation
    // https://developer.apple.com/documentation/testing

    func ModIntTest() {
        let x = ModInt(15,2)
        #expect(x == 499_122_184)
        let y = ModInt(10)
        #expect(y == 10)
    }
}
