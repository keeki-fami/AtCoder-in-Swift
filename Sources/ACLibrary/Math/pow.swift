// repeated squaring
// O(logN) (a^N)
func rep_pow2(_ a: Int, _ po: Int) -> Int {
	var p = po
	var ans = 1
	var num = a
	while p != 0 {
		if p & 1 == 1 {
			ans *= num
		}
		num = num * num
		p = p >> 1
	}
	return ans
}
