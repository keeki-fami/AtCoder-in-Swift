public func printArrayToString(_ l: [Any]) {
	for i in l {
		print("\(i)", terminator: "")
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