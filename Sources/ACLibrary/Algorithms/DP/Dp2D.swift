// 二次元配列のDP
// 新たに記述するのは、dpの条件部分だけにする。
public struct DP2D {
	var h: Int
	var w: Int
	var table: [[Int]]

	// num: 初期化に使用する数値
	init(_ h: Int, _ w: Int, _ num: Int) {
		self.h = h
		self.w = w
		self.table = Array(
			repeating: Array(repeating: num, count: w),
			count: h
		)
	}

	// アクセスがdp[i, j]になる
	subscript(i: Int, j: Int) -> Int {
		get {
			return table[i][j]
		}
		set(num) {
			table[i][j] = num
		}
	}

	// 実際にloop内で行う条件式を記述する。
	func loop(_ body: (Int) -> Void) {
		for i in 0..<h {
			body(i)
		}
	}
	
	// 実際にloop内で行う条件式を記述する。
	func loop2(_ body: (Int, Int) -> Void) {
		for i in 0..<h {
			for j in 0..<w {
				body(i, j)
			}
		}
	}
}