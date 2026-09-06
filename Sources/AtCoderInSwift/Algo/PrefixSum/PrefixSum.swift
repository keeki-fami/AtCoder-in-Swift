public struct PrefixSum {
	private var _list: [Int]
	init(_ list: [Int]) {
		let n = list.count

		precondition(n >= 1, "the length of the list must be more than 0.")

		self._list = [0] + list
		for i in 1...n {
			self._list[i] += self._list[i-1]
		}
	}

	// [i, j)
	public subscript(i: Int, j: Int) -> Int {
		get {
			return self._list[j] - self._list[i]
		}
	}

	public subscript(i: Int) -> Int {
		get {
			return self._list[i]
		}
	}
}