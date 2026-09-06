public struct Graph {

	enum Directional {
		case unidirectional
		case bidirectional
	}

	var _grid: [[Int]]
	var _directional: Directional

	init(n: Int, directional: Directional = .unidirectional) {
		self._grid = Array(repeating: [], count: n)
		self._directional = directional
	}

	public mutating func add(_ x: Int, _ y: Int) {
		self._grid[x-1].append(y-1)
		if self._directional == .bidirectional {
			self._grid[y-1].append(x-1)
		}
	}

	public subscript(i: Int) -> [Int]{
		return self._grid[i]
	}
	
}