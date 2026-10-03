public func runlengthEncode(_ s: String) -> [(Character, Int)]? {
	if s.count == 0 {
		return nil
	}
	var table: [(Character, Int)] = .init()
	var nowCharacter: Character = s.first!
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