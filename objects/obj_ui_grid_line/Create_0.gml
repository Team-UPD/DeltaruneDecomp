_result_list = [];
_alpha = 0;

init = function(arg0)
{
	for (var i = 0; i < 3; i++)
	{
		var result = scr_get_ura_value(arg0, i);
		if (arg0 == (3 << 0) && result == 2)
			result = 0;
		_result_list[array_length(_result_list)] = result;
	}
};

set_alpha = function(arg0)
{
	_alpha = arg0;
};
