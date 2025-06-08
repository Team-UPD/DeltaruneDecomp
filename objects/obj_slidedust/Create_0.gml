image_speed = 0.5;
alarm[5] = 10;
image_xscale = 2;
image_yscale = 2;
if (room == room_dw_mansion_dining3 || room == room_dw_mansion_dininghall)
{
	sprite_index = spr_dustcloud;
	image_xscale = choose(2, -2);
	image_yscale = choose(2, -2);
	scr_depth();
}
