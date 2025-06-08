if (global.chapter >= 2)
{
	if (global.plot >= 100)
	{
		sunset = scr_marker(0, 0, spr_schoollobby_sunsetoverlay);
		with (sunset)
		{
			image_alpha = 0.4;
			depth = 2000;
		}
	}
}
con = -1;
if (global.plot < 8 || global.plot >= 9)
	instance_destroy();
else
	con = 1;
