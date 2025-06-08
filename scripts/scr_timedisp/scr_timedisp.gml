function scr_timedisp(arg0)
{
	var minutes = floor(arg0 / 1800);
	var remmins = minutes % 60;
	var hours = (minutes - remmins) / 60;
	var seconds = floor((arg0 / 30) - (minutes * 60));
	var hourstring = string(hours) + ":";
	var minstring = string(remmins) + ":";
	if (remmins < 10)
		minstring = "0" + minstring;
	var secstring = string(floor(seconds));
	if (seconds < 10)
		secstring = "0" + secstring;
	var timedisp = hourstring + minstring + secstring;
	return timedisp;
}
