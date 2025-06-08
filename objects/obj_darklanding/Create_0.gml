depth = 950000;
con = 99;
if (global.chapter == 1)
{
	if (global.plot < 16)
	{
		con = 1;
		global.interact = 1;
		with (obj_mainchara)
		{
			fun = 1;
			sprite_index = spr_kris_fallen_dark;
		}
		alarm[4] = 45;
	}
	else if (scr_havechar(3))
	{
		rd = instance_create(240, 240, obj_readable_room1);
		rd.image_xscale = 8;
		rd.image_yscale = 2;
	}
}
else
{
	rd = instance_create(240, 240, obj_readable_room1);
	rd.image_xscale = 8;
	rd.image_yscale = 2;
}
