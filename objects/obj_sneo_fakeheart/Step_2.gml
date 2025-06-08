if (state == 0)
{
	image_angle -= (speed * 2);
}
else if (state == 1)
{
	image_alpha = 0;
	image_angle = 0;
	x = obj_growtangle.x + 400;
	speed = 0;
	direction = 0;
}
else if (state == 2)
{
	image_angle += 60;
	image_alpha = 1;
	x -= 20;
	var _minx = (obj_growtangle.x - (obj_growtangle.sprite_width / 2)) + 4;
	if (x <= (_minx + 20))
	{
		x = _minx;
		obj_heart.x = x;
		obj_heart.y = y;
		state = 3;
		global.inv = -1;
		with (obj_spamton_neo_enemy)
			event_user(2);
		with (obj_dmgwriter)
		{
			depth = obj_sneo_fakeheart.depth - 2;
			x = obj_heroparent.x;
			y = obj_heroparent.y;
		}
		obj_heart.color = 1;
		image_angle %= 360;
		if (image_angle < 180)
			image_angle += 360;
		startangle = image_angle;
		heartspeed = 8;
	}
}
else if (state == 3)
{
	obj_heart.x += heartspeed;
	x = obj_heart.x;
	heartspeed -= 1.5;
	image_angle = scr_remapvalue(8, 0, heartspeed, startangle, 0);
	if (heartspeed <= 0)
	{
		obj_heart.color = 1;
		obj_heart.image_alpha = 1;
		instance_destroy();
	}
}
