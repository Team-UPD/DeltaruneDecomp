function scr_havechar(arg0)
{
	_rreturn = 0;
	if (global.char[0] == arg0)
		_rreturn = 1;
	if (global.char[1] == arg0)
		_rreturn = 1;
	if (global.char[2] == arg0)
		_rreturn = 1;
	return _rreturn;
}
