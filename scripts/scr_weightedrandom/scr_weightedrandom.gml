function scr_weightedrandom()
{
	var _maxvalue = 0;
	for (var _i = 0; _i < argument_count; _i++)
		_maxvalue += argument[_i];
	var _randomvalue = random(_maxvalue);
	_maxvalue = 0;
	for (var _i = 0; _i < argument_count; _i++)
	{
		_maxvalue += argument[_i];
		if (_randomvalue <= _maxvalue)
			return _i;
	}
}
