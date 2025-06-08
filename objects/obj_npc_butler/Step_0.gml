event_inherited();
scr_depth();
if (con == 1)
{
	con = 2;
	scr_shakeobj();
	sprite_index = spr_swatchling_hurt;
	image_speed = 0;
}
if (con == 2)
{
	closetimer++;
	if (closetimer > 30)
	{
		con = 3;
		closetimer = 0;
		sprite_index = spr_npc_butler;
	}
}
if (con == 3)
{
	con = 4;
	if (image_xscale == 2)
		image_xscale = -2;
	x += 10;
	if (x > (camerax() + 1700))
		instance_destroy();
}
