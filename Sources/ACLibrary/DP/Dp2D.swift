// 二次元配列のDP
// 方向性: h, w, tableが散らばるのを防ぐ。
// 新たに記述するのは、dpの条件部分だけにする。
class Dp2D {
	var h: Int
	var w: Int
	var table: [[Int]]

	// num: 初期化に使用する数値
	init(_ h: Int, _ w: Int, _ num: Int) {
		self.h = h
		self.w = w
		self.table = []
		for _ in 0..<h {
			table.append(
				Array(
					repeating: num,
					count: w,
				)
			)
		}
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
	func loop(_ body: (Int, Int) -> Void) {
		for i in 0..<h {
			for j in 0..<w {
				body(i, j)
			}
		}
	}
}