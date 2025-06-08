con = -1;
customcon = 0;
if (global.chapter != 2 || global.flag[315] == 1)
{
	instance_destroy();
}
else
{
	snowy = scr_marker(135, 1130, spr_snowy_ut);
	with (snowy)
		scr_depth();
	monsterkid = scr_marker(170, 1130, spr_mkid_ut);
	with (monsterkid)
		scr_depth();
}
