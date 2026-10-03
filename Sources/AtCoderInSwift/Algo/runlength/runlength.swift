public func runlengthEncode(_ s: String) -> [(Character, Int)]? {
	guard let firstCh = s.first else {
		return nil
	}
	var table: [(Character, Int)] = .init()
	var nowCharacter: Character = firstCh
	var count = 0
	for ch in s {
		if ch == nowCharacter {
			count += 1
		} else {
			table.append((nowCharacter, count))
			nowCharacter = ch
			count = 1
		}
	}	
	table.append((nowCharacter, count))
	return table
}