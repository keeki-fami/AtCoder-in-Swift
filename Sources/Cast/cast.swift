// cast Array<Int> to Int
// ex: [1,2,3] -> 123
// O(N) N: length of Array<Int>
public func intArrayToInt(_ intList: [Int]) -> Int {
	var num = 0
	for i in intList {
		num = num * 10 + i
	}
	return num
}

public func stringArrayToInt(_ list: [String]) -> Int? {
	return genericArrayToInt(list)
}

// cast Array<T> to Int (T needs to comply to StringProtocol)
// ex1: ["1", "2", "3"] -> 123
// ex2: ["a", "b", "c"] -> nil
private func genericArrayToInt<T: StringProtocol>(_ list: [T]) -> Int? {
	let mul: [Int] = [
		1, 
		10, 
		100, 
		1000, 
		10000, 
		100000, 
		1000000, 
		10000000, 
		100000000, 
		1000000000, 
		10000000000, 
		100000000000, 
		1000000000000,
		10000000000000, 
		100000000000000, 
		1000000000000000,
		10000000000000000
	]
	var num = 0
	for s in list {
		if let n = Int(s) {
			num = num * 10*mul[s.count-1] + n
		} else {
			return nil
		}
	}
	return num
}