struct BinarySearch {
	private var _high: Int?
	private var _low: Int?
	private var _arr: [Int]?
	private var _type: ProblemType

	private enum ProblemType {
		case Search
		case MaxinMin
		case MininMax
	}

	public init(arr: [Int]) {
		self._arr = arr.sorted()
		self._type = .Search

		self._high = nil
		self._low = nil
	}

	public init(high: Int, low: Int, isSolveMininMax: Bool) {
		self._high = high
		self._low = low

		if isSolveMininMax {
			self._type = .MininMax
		} else {
			self._type = .MaxinMin
		}
		_arr = []
	}

	// search x, return index
	public func find(_ x: Int) -> Int {
		guard let arr = self._arr else {
			return -1
		}
		var h = arr.count
		var l = -1

		while (l + 1 < h) {
			let middle = (l + h) / 2
			if arr[middle] == x {
				return middle
			} else if arr[middle] > x {
				h = middle
			} else {
				l = middle
			}
		}

		return -1
	}

	// 最大値の最小化 (最小値の最大化)
	public func search(_ body: (Int, Int, Int) -> Bool) -> Int {
		guard var h = _high, var l = _low else {
			return -1
		}

		let check_h = h
		let check_l = l

		while(l + 1 < h) {
			let middle = (h + l) / 2
			if body(l, h, middle) {
				if self._type == .MininMax {h = middle} else {l = middle}
			} else {
				if self._type == .MininMax {l = middle} else {h = middle}
			}
		}
		if h == check_h || l == check_l {
			// 答えがない
			return -1
		}
		if self._type == .MininMax {
			return h
		} else {
			return l
		}
	}

}