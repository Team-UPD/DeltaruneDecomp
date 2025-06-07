scr_depth();
image_xscale = 2;
image_yscale = 2;
holecon = 0;
image_speed = 0;
distance = 9999;
type = 0;
maxdist = 80;
if (room == room_forest_area3)
{
	if (x < 600)
	{
		type = 0;
	}
	else
	{
		type = 1;
		if (x >= 1000)
			type = 2;
	}
	if (global.plot >= 75)
		holecon = 999;
}
sprite_type[0] = spr_cloverhole_happy;
sprite_type[1] = spr_cloverhole_shy;
sprite_type[2] = spr_cloverhole_mad;
