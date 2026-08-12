// 分母と分子を一回ずつ計算する
public func nCr(n: Int, r: Int) -> Int {
	var num = 1
	for i in 0..<r {
		num *= n-i
		if i != 0{
			num /= r - i + 1
		}
	}

	return num
}

public func factorial(_ n: Int) -> Int {
	var num = 1
	let factorialLen = factorialTable.count - 1
	for i in stride(from: n, to: -1, by: -1) {
		if i <= factorialLen {
			return num*factorialTable[i]
		} else {
			num *= i
		}
	}
	return num
}

private let factorialTable: [Int] = [
    1, // 0!
    1, // 1!
    2, // 2!
    6, // 3!
    24, // 4!
    120, // 5!
    720, // 6!
    5040, // 7!
    40320, // 8!
    362880, // 9!
    3628800, // 10!
    39916800, // 11!
    479001600, // 12!
    6227020800, // 13!
    87178291200, // 14!
    1307674368000, // 15!
    20922789888000, // 16!
    355687428096000, // 17!
    6402373705728000, // 18!
    121645100408832000, // 19!
    2432902008176640000, // 20!
]