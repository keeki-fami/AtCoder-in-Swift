// repeated squaring
// O(logN) (a^N)
func rep_pow2(_ a: Int, _ po: Int) -> Int {
	return rep_pow2_mod(a, po, nil)
}

// repeated squaring (mod)
// O(logN) (a^N)
func rep_pow2_mod(_ a: Int, _ po: Int, _ mod: Int?) -> Int {
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