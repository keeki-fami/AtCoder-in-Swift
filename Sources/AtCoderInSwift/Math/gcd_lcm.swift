// 最大公約数
// 時間計算量: O(N)
// 2つ以上の正の整数に対して、最大公約数を求める。
// 引数の数が1つ出会った場合、その値を返す
// 引数の値が0出会った場合、nilを返す。
// 引数に負の数が含まれていた場合、nilを返す。

public func gcd(_ val: Int ... ) -> Int? {
	// check
	let l = val.filter{$0<0}.count 
	// 負の数が含まれていた場合、nilを返す。
	if l > 0 {
		return nil
	}

	// valの長さが1であった場合、それを返す
	// 0であった場合、nilを返す
	let cnt = val.count
	if cnt == 1 {
		return val.first
	} else if cnt == 0 {
		return nil
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

	let l = val.filter{$0<0}.count

	if l > 0 {
		return nil
	}

	let cnt = val.count
	if cnt == 1 {
		return val.first
	} else if cnt == 0 {
		return nil
	}

	var num = val.first!
	for i in 1..<cnt {
		num = num * val[i] / gcd(num, val[i])!
	}

	return num
}
