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

public func printArrayYN<Element>(_ l: [Element], judge: (Element) -> Bool) {
	for val in l {
		if judge(val) {
			printY()
		} else {
			printN()
		}
	}
}

public func customPrintTF(_ judge: () -> Bool, t: String, f: String) {
	if judge() {
		print(t)
	} else {
		print(f)
	}
}

public func printYN(_ judge: () -> Bool) {
	if judge() {
		print("Yes")
	} else {
		print("No")
	}
}

public func printY() {
	print("Yes")
}

public func printN() {
	print("No")
}