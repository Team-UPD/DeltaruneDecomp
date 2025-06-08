event_inherited();
con = -1;
moss_con = -1;
shine = -1;
if (scr_sideb_get_phase() == 0 && global.flag[920] == 0)
{
	shine = scr_dark_marker(134, 214, spr_shine);
	with (shine)
	{
		scr_depth();
		image_speed = 0.1;
	}
}
