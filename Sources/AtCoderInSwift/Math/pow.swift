// repeated squaring
// O(logN) (a^N)
public func powN(_ a: Int, _ po: Int) -> Int {
	return powMod(a, po, nil)
}

// repeated squaring (mod)
// O(logN) (a^N)
public func powMod(_ a: Int, _ po: Int, _ mod: Int?) -> Int {
	var p = po
	var ans = 1
	var num = a
	while p != 0 {
		if p & 1 == 1 {
			ans *= num
		}
		num = num * num
		p = p >> 1
		if let m = mod {
			num %= m
			ans %= m
		}
	}
	return ans
}