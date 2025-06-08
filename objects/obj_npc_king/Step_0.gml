event_inherited();
if (global.flag[20] == 0)
	sprite_index = spr_king_sulk;
if (global.flag[20] == 1)
	sprite_index = spr_king_sulk_left;
if (global.flag[20] == 2)
	sprite_index = spr_king_sulk_right;
if (global.flag[20] == 3)
{
	sprite_index = spr_king_sulk_drink;
	image_speed = 0.2;
}
if (global.flag[20] == 3)
{
	if (x < 1380)
	{
		if (hspeed < 3)
			hspeed = 3;
		hspeed += 1;
		if (y >= (ystart - 60))
			y -= 4;
	}
	else
	{
		hspeed = 0;
	}
}
else if (x > xstart)
{
	if (y <= ystart)
		y += 4;
	hspeed -= 1;
}
else
{
	hspeed = 0;
}
if (x > 1455)
	x = 1455;
