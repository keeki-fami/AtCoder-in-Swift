// 分母と分子を一回ずつ計算する
// O(r)
// n==0の時、0を返す
public func nCrMod(n: Int, r: Int, mod: Int) -> Int {
	var num = 1
	if r == 0 {
		return 1
	}
	for i in (n-r+1)...(n) {
		num *= i
		num %= mod
	}
	for j in 1...r {
		num *= powMod(j, mod-2, mod)
		num%=mod
	}
	return num
}

public func factorialMod(_ n: Int) -> Int {
	var num = 1
	let factorialLen = factorialTable.count - 1
	for i in stride(from: n, to: -1, by: -1) {
		if i <= factorialLen {
			return num*factorialTable[i] % 998244353
		} else {
			num *= i
		}
	}
	return num
}

// 998244353s
private let factorialTable: [Int] = [
    1,            // 0!  mod 998244353
    1,            // 1!
    2,            // 2!
    6,            // 3!
    24,           // 4!
    120,          // 5!
    720,          // 6!
    5_040,        // 7!
    40_320,       // 8!
    362_880,      // 9!
    3_628_800,    // 10!
    39_916_800,   // 11!
    479_001_600,  // 12!
    237_554_682,  // 13!
    331_032_489,  // 14!
    972_509_923,  // 15!
    586_493_473,  // 16!
    986_189_864,  // 17!
    781_263_551,  // 18!
    868_586_527,  // 19!
    401_576_539,  // 20!
]