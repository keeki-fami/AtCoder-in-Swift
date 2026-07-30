// 分母と分子を一回ずつ計算する
func nCr(n: Int, r: Int) -> Int {
	var num = 1
	for i in 0..<r {
		num *= n-i
		if i != 0{
			num /= r - i + 1
		}
	}

	return num
}

private let factorial = [
	0,
	1,
	2, 
	6, 
	24, 
	120, 
	720, 
	5040,
	40320,
	362880,
	]