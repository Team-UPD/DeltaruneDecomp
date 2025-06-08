if (init == 0)
{
	remhspeed = hspeed;
	remy = y;
	if (instance_exists(obj_growtangle))
		yspot = obj_growtangle.y + (sprite_height * howfar);
	else
		yspot = 240;
	init = 1;
}
if (con == 0)
{
	timer++;
	y = lerp(remy, yspot, min(1, timer / howlong));
	hspeed = lerp(remhspeed, maxhspeed, min(1, timer / howlong));
	if (timer >= howlong)
	{
		con = 1;
		timer = 0;
	}
}
if (con == 1)
{
	hspeed += (sign(hspeed) * 0.25);
	timer++;
	if (timer >= 30)
	{
		active = 0;
		image_alpha -= 0.1;
	}
	if (image_alpha <= 0)
		instance_destroy();
}
