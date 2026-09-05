public func getInt() -> Int {
	return Int(readLine()!)!
}

public func getString() -> String {
	return readLine()!
}

public func getIntList(gap: String = " ") -> [Int] {
	return readLine()!.split(separator: Character(gap)).map { Int($0)! }
}

public func getStringList(gap: String = " ") -> [String] {
	return readLine()!.split(separator: Character(gap)).map { String($0) }
}

public func getIntTupple2() -> (Int, Int) {
	let num = readLine()!.split(separator: " ").map { Int($0)! }
	return (num[0], num[1])
}

public func getIntTupple3() -> (Int, Int, Int) {
	let num = readLine()!.split(separator: " ").map { Int($0)! }
	return (num[0], num[1], num[2])
}

public func getIntTupple4() -> (Int, Int, Int, Int) {
	let num = readLine()!.split(separator: " ").map { Int($0)! }
	return (num[0], num[1], num[2], num[3])
}

public func getIntTupple5() -> (Int, Int, Int, Int, Int) {
	let num = readLine()!.split(separator: " ").map { Int($0)! }
	return (num[0], num[1], num[2], num[3], num[4])
}

public func getIntTupple6() -> (Int, Int, Int, Int, Int, Int) {
	let num = readLine()!.split(separator: " ").map { Int($0)! }
	return (num[0], num[1], num[2], num[3], num[4], num[5])
}
