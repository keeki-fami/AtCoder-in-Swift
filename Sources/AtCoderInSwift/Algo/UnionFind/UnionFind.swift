struct UnionFind {
	var _parent: [Int]

	init(_ n: Int) {
		// -1: root
		self._parent = Array(repeating: -1, count: n+1)
	}

	mutating func union(_ x: Int, _ y: Int) {
		let parentx = root(x)
		let parenty = root(y)

		if parentx != parenty {
			let len = abs(self._parent[parentx]) + abs(self._parent[parenty])
			if abs(self._parent[parentx]) < abs(self._parent[parenty]) {
				// yにつける
				self._parent[parentx] = parenty
				self._parent[x] = parenty
				self._parent[parenty] = -1*len
			} else {
				self._parent[parenty] = parentx
				self._parent[y] = parentx
				self._parent[parentx] = -1*len
			}
		}
	}

	mutating func same(_ x: Int, _ y: Int) -> Bool {
		let parentx = root(self._parent[x])
		let parenty = root(self._parent[y])
		return parentx == parenty
	}

	mutating func root(_ num: Int) -> Int {
		if self._parent[num] < 0 {
			return num
		} else {
			let p = root(self._parent[num])
			self._parent[num] = p
			// 途中経路のnodeについて、rootに直接結合する。
			return p
		}
	}

	mutating func count(_ num: Int) -> Int {
		let num = self.root(num)
		return abs(self._parent[num])
	}
}