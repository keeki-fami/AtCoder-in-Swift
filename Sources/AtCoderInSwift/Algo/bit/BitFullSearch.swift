public struct BitFullSearch {
	var bit: Int
	var n: Int

	public init(n: Int) {
		self.n = n
		bit = n
	}
	
	public func search(before: () -> Void, isOne: (Int) -> Void, isZero: (Int) -> Void, after: () -> Void) {
		for num in 0 ..< (1<<n) {
			// for initialize
			before()
			for i in 0..<n {
				if (num >> i & 1) == 1 {
					isOne(i)
				} else {
					isZero(i)
				}
			}
			after()
		}
	}

}