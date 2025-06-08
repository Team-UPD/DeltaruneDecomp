function scr_sort_by_distance(arg0, arg1, arg2, arg3)
{
	var _array = arg2;
	var _ascending = arg3;
	var _array_length = array_length_1d(arg0);
	var _distance_array;
	for (i = 0; i < _array_length; i++)
		_distance_array[i] = point_distance(arg0, arg1, _array[i].x, _array[i].y);
	var _tempValue = 0;
	var _loopAgain = true;
	var _emergencyStop = 0;
	while (_loopAgain == true && _emergencyStop < 100)
	{
		_loopAgain = false;
		_emergencyStop++;
		for (i = 1; i < _array_length; i++)
		{
			if (_distance_array[i] == _distance_array[i - 1])
			{
				continue;
			}
			else if (_ascending == (_distance_array[i] < _distance_array[i - 1]))
			{
				_loopAgain = true;
				_tempValue = _distance_array[i - 1];
				_distance_array[i - 1] = _distance_array[i];
				_distance_array[i] = _tempValue;
				_tempValue = _array[i - 1];
				_array[i - 1] = _array[i];
				_array[i] = _tempValue;
			}
		}
	}
	if (_emergencyStop >= 100)
		scr_debug_print("");
	return _array;
}
