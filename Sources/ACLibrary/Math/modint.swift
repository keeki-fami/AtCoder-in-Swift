// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation

public struct ModInt {
	static let mod = 998_244_353
	var value: Int

	public init(_ x: Int) {
		let num: Int = x % ModInt.mod
		self.value = num
	}

	public init(_ a: Int, _ b: Int) {
		self.value = 0
		let anum = a % ModInt.mod
		let bnum = ModInt.pow_mod(b, ModInt.mod - 2)
		self.value = anum * bnum % ModInt.mod
	}

	mutating public func inverse() {
		self.value = ModInt.pow_mod(self.value, ModInt.mod-2)
	}

	// 繰り返し二乗法(mod)
	// aのpo乗を、mod998244353で求める
	private static func pow_mod(_ a: Int, _ po: Int) -> Int {
		var p = po
		var ans = 1
		var num = a
		while p != 0 {
			if p & 1 == 1 {
				ans *= num
			}
			num = num * num
			num %= ModInt.mod
			p = p >> 1

			ans %= ModInt.mod
		}
		return ans
	}

	// 演算子のオーバーロード
	public static func + (left: ModInt, right: ModInt) -> ModInt {
		let val = left.value + right.value
		return ModInt(val)
	}
	public static func + (left: ModInt, right:Int) -> ModInt {
		let val = left.value + right
		return ModInt(val)
	}
	public static func + (left: Int, right: ModInt) -> ModInt {
		let val = left + right.value
		return ModInt(val)
	}

	public static func * (left: ModInt, right: ModInt) -> ModInt {
		let val = left.value * right.value
		return ModInt(val)
	}
	public static func * (left: ModInt, right: Int) -> ModInt {
		let val = left.value * right
		return ModInt(val)
	}
	public static func * (left: Int, right: ModInt) -> ModInt {
		let val = left * right.value
		return ModInt(val)
	}

	public static func - (left: ModInt, right: ModInt) -> ModInt {
		var val = left.value - right.value
		if val < 0 {
			val += ModInt.mod
		}
		return ModInt(val)
	}
	public static func - (left: Int, right: ModInt) -> ModInt {
		var val = left - right.value
		if val < 0 {
			val += ModInt.mod
		}
		return ModInt(val)
	}
	public static func - (left: ModInt, right: Int) -> ModInt {
		var val = left.value - right
		if val < 0 {
			val += ModInt.mod
		}
		return ModInt(val)
	}

	public static func / (left: ModInt, right: ModInt) -> ModInt {
		let val = left*ModInt.pow_mod(left.value, self.mod-2)
		return val
	}
	public static func / (left: Int, right: ModInt) -> ModInt {
		let left_modint = ModInt(left)
		let val = left_modint.value * ModInt.pow_mod(right.value, self.mod-2)
		return ModInt(val)
	}
	public static func / (left: ModInt, right: Int) -> ModInt {
		let right_modint = ModInt(right)
		let val = left.value * ModInt.pow_mod(right_modint.value, right_modint.value)
		return ModInt(val)
	}

	public static func == (left: ModInt, right: ModInt) -> Bool {
		return left.value == right.value
	}

	public static func == (left: ModInt, right: Int) -> Bool {
		return left.value == right
	}

	public static func == (left: Int, right: ModInt) -> Bool {
		return left == right.value
	}

	public static func += (left: inout ModInt, right: ModInt) {
		left = left + right
	}

	public static func += (left: inout ModInt, right: Int) {
		left = left + right
	}
}

extension ModInt: CustomStringConvertible {
	public var description: String {
		return "\(self.value)"
	}
}