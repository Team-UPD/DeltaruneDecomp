function draw_text_width(arg0, arg1, arg2, arg3)
{
	var _stringxscale = 1;
	var _stringwidth = string_width(arg2);
	if (_stringwidth >= arg3)
		_stringxscale = arg3 / _stringwidth;
	draw_text_transformed(arg0, arg1, arg2, _stringxscale, 1, 0);
}
