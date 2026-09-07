public func getInt() -> Int {
	return Int(readLine()!)!
}

public func getString() -> String {
	return readLine()!
}

public func getIntArray(gap: String = " ") -> [Int] {
	return readLine()!.split(separator: Character(gap)).map { Int($0)! }
}

public func getStringArray(gap: String = " ") -> [String] {
	return readLine()!.split(separator: Character(gap)).map { String($0) }
}

public func getIntTuple2() -> (Int, Int) {
	let num = readLine()!.split(separator: " ").map { Int($0)! }
	return (num[0], num[1])
}

public func getIntTuple3() -> (Int, Int, Int) {
	let num = readLine()!.split(separator: " ").map { Int($0)! }
	return (num[0], num[1], num[2])
}

public func getIntTuple4() -> (Int, Int, Int, Int) {
	let num = readLine()!.split(separator: " ").map { Int($0)! }
	return (num[0], num[1], num[2], num[3])
}

public func getIntTuple5() -> (Int, Int, Int, Int, Int) {
	let num = readLine()!.split(separator: " ").map { Int($0)! }
	return (num[0], num[1], num[2], num[3], num[4])
}

public func getIntTuple6() -> (Int, Int, Int, Int, Int, Int) {
	let num = readLine()!.split(separator: " ").map { Int($0)! }
	return (num[0], num[1], num[2], num[3], num[4], num[5])
}
