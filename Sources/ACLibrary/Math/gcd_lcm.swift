// 最大公約数
// O(N)
public func gcd(_ val: Int ... ) -> Int? {

	let cnt = val.count

	if cnt < 2 {
		return val.first
	}

	var now = val.first!

	for i in 1..<cnt {
		now = _gcd(now, val[i])
	}

	return now

	func _gcd(_ x: Int, _ y: Int) -> Int {
		if y == 0 { return x }
		else { return _gcd(y, x%y) }
	}
}

// 最小公倍数
// O(N)
public func lcm(_ val: Int ... ) -> Int? {

	let l = val.count
	if l < 2 {
		return val.first
	}

	var num = val.first!
	for i in 1..<l {
		num = num * val[i] / gcd(num, val[i])!
	}

	return num
}