public struct PrefixSum {
	private var _list: [Int]
	init(_ list: [Int]) {
		let n = list.count
		self._list = [0] + list
		for i in 1...n {
			self._list[i] = self._list[i-1]
		}
	}

	public subscript(i: Int, j: Int) -> Int {
		get {
			return self._list[j] - self._list[i]
		}
	}
}