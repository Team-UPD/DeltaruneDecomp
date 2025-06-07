if (con == 1)
{
	active = 1;
	visible = 1;
	image_alpha += 0.15;
	if (image_alpha >= 1)
		con = 2;
}
if (con == 2)
{
	falltimer += 1;
	if (falltimer >= fallspeed)
	{
		if (ypos < 0 && !collision_point(x + (sprite_width / 2), y + (sprite_height * 1.5), obj_blockbullet_fall, 0, 1))
			ypos += 1;
		else
			halt = 1;
		falltimer = 0;
	}
}
if (con == 0)
	con = 1;
if (con == 3)
{
	if (image_alpha <= 0.2)
		instance_destroy();
	active = 0;
	image_alpha -= 0.2;
}
if (instance_exists(obj_battlesolid))
{
	lx = (obj_battlesolid.x - (obj_battlesolid.sprite_width / 2)) + 8;
	x = lx + (xpos * sprite_width);
	yx = (obj_battlesolid.y + (obj_battlesolid.sprite_height / 2)) - 3 - sprite_height;
	y = yx + (ypos * sprite_height);
}
if (grazed == 1)
{
	grazepoints = 0;
	timepoints = 0;
}
