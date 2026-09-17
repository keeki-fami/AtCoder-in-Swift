import DequeModule
public struct Graph {

	enum Directional {
		case unidirectional
		case bidirectional
	}

	var _grid: [[Int]]
	var _directional: Directional
	var _willVisitedSet = Set<Int>()

	init(n: Int, directional: Directional = .unidirectional) {
		self._grid = Array(repeating: [], count: n)
		self._directional = directional
		self._willVisitedSet = .init()
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

	// ノード数を求める。
	// public mutating func dfs(start: Int) -> Int {
	// 	var deque: Deque<Int> = .init()
	// 	deque.append(start)
	// 	self._willVisitedSet.insert(start)

	// 	var now = start
	// 	var visitedCount = 0

	// 	while !deque.isEmpty {
	// 		now = deque.popLast()!
	// 		visitedCount += 1

	// 		for next in self._grid[now] {
	// 			if !self._willVisitedSet.contains(next) {
	// 				deque.append(next)
	// 			}
	// 		}
	// 	}

	// 	return visitedCount
	// }

	// // ノード数を求める。
	// public mutating func bfs(start: Int) -> Int {
	// 	var deque: Deque<Int> = .init()
	// 	deque.append(start)
	// 	self._willVisitedSet.insert(start)

	// 	var now = start
	// 	var visitedCount = 0

	// 	while !deque.isEmpty {
	// 		now = deque.popFirst()!
	// 		visitedCount += 1

	// 		for next in self._grid[now] {
	// 			if !self._willVisitedSet.contains(next) {
	// 				deque.append(next)
	// 			}
	// 		}
	// 	}

	// 	return visitedCount
	// }

	// public mutating func isCycle(start: Int) -> Bool {
	// 	var deque: Deque<Int> = .init()
	// 	deque.append(start)
	// 	self._willVisitedSet.insert(start)

	// 	var now = start
	// 	var isFlag = false

	// 	while !deque.isEmpty {
	// 		now = deque.popLast()!

	// 		for next in self._grid[now] {
	// 			if !self._willVisitedSet.contains(next) {
	// 				deque.append(next)
	// 			} else {
	// 				isFlag = true
	// 				break
	// 			}
	// 		}
			
	// 		if isFlag { break }
	// 	}

	// 	return isFlag
	// }

	// public func getCycle(start: Int) -> [Int]? {

	// }
	
}