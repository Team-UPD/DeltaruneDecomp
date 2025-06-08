if (con == -2)
{
	timer++;
	if (timer >= waittime)
	{
		con = 0;
		x += 50;
		vspeed = 10;
		friction = -1;
	}
}
if (con == 0 && y >= (ystart - vspeed))
{
	for (i = 0; i < 4; i++)
	{
		lit = instance_create(x - 40, y, o_coaster_jama);
		lit.sprite_index = spr_coaster_lightning;
		lit.image_speed = 0.25;
		lit.friction = 0.2;
		lit.hspeed = -4 + (i * 4);
		lit.type = 1;
		lit.waitamount = litwaittime;
		if (i == 3)
		{
			lit.visible = 0;
			lit.moveberd = 1;
		}
	}
	vspeed = 0;
	image_angle = 0;
	image_speed = 0;
	image_index = 0;
	image_speed = 0.5;
	y -= 20;
	sprite_index = spr_coaster_explosion;
	con = 1;
}
if (con == 1)
{
	if (image_index >= 3)
		instance_destroy();
}
