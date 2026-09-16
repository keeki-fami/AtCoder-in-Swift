public struct Array2D<T> {
	var _array: [[T]]
	var h: Int
	var w: Int

	init(_ num: T, _ h: Int, _ w: Int) {
		self._array = Array(
			repeating: Array(repeating: num, count: w),
			count: h
		)

		self.h = h
		self.w = w
	}

	subscript(_ i: Int, _ j: Int) -> T {
		get {
			return _array[i][j]
		}
		set(num) {
			_array[i][j] = num
		}
	}
}