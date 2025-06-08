function scr_array_sort(arg0, arg1)
{
	var _array = arg0;
	var _ascending = arg1;
	var _array_length = array_length_1d(arg0);
	var _tempValue = 0;
	var _loopAgain = true;
	var _emergencyStop = 0;
	while (_loopAgain == true && _emergencyStop < 100)
	{
		_loopAgain = false;
		_emergencyStop++;
		for (i = 1; i < _array_length; i++)
		{
			if (_array[i] == _array[i - 1])
			{
				continue;
			}
			else if (_ascending == (_array[i] < _array[i - 1]))
			{
				_loopAgain = true;
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
