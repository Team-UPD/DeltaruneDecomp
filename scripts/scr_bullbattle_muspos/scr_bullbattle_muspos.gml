function scr_bullbattle_muspos(arg0)
{
	var targ = arg0 - modifier;
	if (trackpos >= (targ - 0.03) && trackpos <= (targ + 0.01))
		return true;
	else
		return false;
}
