public func ceilDiv(_ x: Int, _ y: Int) -> Int? {
	var _x = x
	var _y = y

	if _y == 0 {
		return nil
	}

	if _x * _y > 0 {
		_x = abs(_x)
		_y = abs(_y)

		if _x % _y == 0 {
			return _x / _y
		} else {
			return _x / _y + 1
		}
	} else {
		if _x % _y == 0 {
			return _x / _y
		} else {
			return _x / _y 
		}
	}
}

public func floorDiv(_ x: Int, _ y: Int) -> Int? {
	var _x = x
	var _y = y

	if _y == 0 {
		return nil
	}

	if _x * _y > 0 {
		_x = abs(_x)
		_y = abs(_y)

		if _x % _y == 0 {
			return _x / _y
		} else {
			return _x / _y
		}
	} else {
		if _x % _y == 0 {
			return _x / _y
		} else {
			return _x / _y + -1
		}
	}
}