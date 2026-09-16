public struct Imos1D {
	private var _list: [Int]
	public init(_ n: Int) {
		self._list = Array(repeating: 0, count: n)
	}

	public mutating func set(_ l: Int, _ r: Int, _ num: Int) {
		self._list[l] += num
		if r+1 < self._list.count {
			self._list[r+1] -= num
		}
	}

	public func solve() -> [Int] {
		var ansList = self._list
		for i in 1..<ansList.count {
			ansList[i] += ansList[i-1]
		}
		return ansList
	}
}