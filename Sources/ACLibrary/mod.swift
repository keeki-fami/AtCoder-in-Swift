// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation

struct ModInt: CustomStringConvertible {
	static let mod = 998_244_353
	var value: Int

	init(_ x: Int) {
		let num: Int = x % ModInt.mod
		self.value = num
	}

	init(_ a: Int, _ b: Int) {
		self.value = 0
		let anum = a % ModInt.mod
		let bnum = ModInt.rep_pow2_mod(b, ModInt.mod - 2)
		self.value = anum * bnum % ModInt.mod
	}

	// 繰り返し二乗法(mod)
	// aのpo乗を、mod998244353で求める
	private static func rep_pow2_mod(_ a: Int, _ po: Int) -> Int {
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
	static func + (left: ModInt, right: ModInt) -> ModInt {
		let val = left.value + right.value
		return ModInt(val)
	}
	static func + (left: ModInt, right:Int) -> ModInt {
		let val = left.value + right
		return ModInt(val)
	}
	static func + (left: Int, right: ModInt) -> ModInt {
		let val = left + right.value
		return ModInt(val)
	}

	static func * (left: ModInt, right: ModInt) -> ModInt {
		let val = left.value * right.value
		return ModInt(val)
	}
	static func * (left: ModInt, right: Int) -> ModInt {
		let val = left.value * right
		return ModInt(val)
	}
	static func * (left: Int, right: ModInt) -> ModInt {
		let val = left * right.value
		return ModInt(val)
	}

	static func - (left: ModInt, right: ModInt) -> ModInt {
		var val = left.value - right.value
		if val < 0 {
			val += ModInt.mod
		}
		return ModInt(val)
	}
	static func - (left: Int, right: ModInt) -> ModInt {
		var val = left - right.value
		if val < 0 {
			val += ModInt.mod
		}
		return ModInt(val)
	}
	static func - (left: ModInt, right: Int) -> ModInt {
		var val = left.value - right
		if val < 0 {
			val += ModInt.mod
		}
		return ModInt(val)
	}

	static func / (left: ModInt, right: ModInt) -> ModInt {
		let val = ModInt.rep_pow2_mod(left.value, right.value)
		return ModInt(val)
	}
	static func / (left: Int, right: ModInt) -> ModInt {
		let left_modint = ModInt(left)
		let val = ModInt.rep_pow2_mod(left_modint.value, right.value)
		return ModInt(val)
	}
	static func / (left: ModInt, right: Int) -> ModInt {
		let right_modint = ModInt(right)
		let val = ModInt.rep_pow2_mod(left.value, right_modint.value)
		return ModInt(val)
	}

	static func == (left: ModInt, right: ModInt) -> Bool {
		return left.value == right.value
	}

	static func == (left: ModInt, right: Int) -> Bool {
		return left.value == right
	}

	static func == (left: Int, right: ModInt) -> Bool {
		return left == right.value
	}

	static func += (left: inout ModInt, right: ModInt) {
		left = left + right
	}

	static func += (left: inout ModInt, right: Int) {
		left = left + right
	}

	var description: String {
		return "\(self.value)"
	}
}
