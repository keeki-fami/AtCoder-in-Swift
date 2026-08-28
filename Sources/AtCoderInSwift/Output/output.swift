public func printArray(_ l: [Any], gap: String = "") {
	for i in l {
		print("\(i)", terminator: gap)
	}
	print("")
}

public func print2DArray(_ s: [[Any]], gap: String = "") {
	for row in s {
		for val in row {
			print("\(val)", terminator: gap)
		}
		print("")
	}
}