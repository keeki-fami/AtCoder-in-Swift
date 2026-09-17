// 0-indexed
public struct PrefixSum {
	private var _prefixSum: [Int]
	public init(_ list: [Int]) {
		let n = list.count
		precondition(n >= 1, "the length of the list must be more than 0.")

		var prefixSum = [0] + list
		for i in 1...n {
			prefixSum[i] += prefixSum[i-1]
		}

		self._prefixSum = prefixSum
	}

	// [i, j)
	public subscript(i: Int, j: Int) -> Int {
		get {
			return self._prefixSum[j] - self._prefixSum[i]
		}
	}

	public subscript(i: Int) -> Int {
		set(num){
			self._prefixSum[i] = num
		}
		get {
			return self._prefixSum[i]
		}
	}

}