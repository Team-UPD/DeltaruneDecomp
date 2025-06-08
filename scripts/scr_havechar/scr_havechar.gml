function scr_havechar(arg0)
{
	var checker = arg0;
	if (checker == "susie" || checker == "su" || checker == "s")
		checker = 2;
	if (checker == "ralsei" || checker == "ra" || checker == "r")
		checker = 3;
	if (checker == "noelle" || checker == "no" || checker == "n")
		checker = 4;
	_rreturn = 0;
	if (global.char[0] == checker)
		_rreturn = 1;
	if (global.char[1] == checker)
		_rreturn = 1;
	if (global.char[2] == checker)
		_rreturn = 1;
	return _rreturn;
}
