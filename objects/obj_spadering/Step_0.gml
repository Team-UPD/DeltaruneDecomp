if (t == 0)
{
	if (size > 1)
		startang = -random(180);
	for (i = 0; i < maxspade; i += 1)
	{
		spadeang = ((360 / maxspade) * i) + startang;
		if (side == 1)
			spadeang = -spadeang;
		spadex = lengthdir_x(300, spadeang + 180);
		spadey = lengthdir_y(300, spadeang + 180);
		spade[i] = instance_create(spadex + obj_battlesolid.x, spadey + obj_battlesolid.y, obj_collidebullet);
		scr_bullet_inherit(spade[i]);
		spade[i].sprite_index = spr_spadebullet;
		spade[i].image_alpha = 0;
		spade[i].active = 1;
		spade[i].image_blend = c_ltgray;
		spade[i].direction = spadeang;
		spade[i].image_angle = spadeang;
		spade[i].speed = 26;
		spade[i].image_xscale = size;
		spade[i].image_yscale = size;
	}
}
if (t >= 1 && t < 15)
{
	for (i = 0; i < maxspade; i += 1)
	{
		with (spade[i])
		{
			speed *= 0.87;
			image_alpha += 0.1;
		}
	}
}
if (t == 15)
{
	for (i = 0; i < maxspade; i += 1)
	{
		with (spade[i])
		{
			speed = 0;
			image_alpha += 0.1;
		}
	}
}
if (t >= 15 && con == 0)
{
	spadet += 1;
	if (special == 1)
		spadet += 6;
	if (spadet >= 4)
	{
		with (spade[startspade])
		{
			image_blend = c_white;
			gravity_direction = direction;
			speed = -3.4;
		}
		spade[startspade].gravity = grav;
		startspade += 1;
		if (startspade >= maxspade)
		{
			con = 1;
			instance_destroy();
		}
		spadet = 0;
	}
}
t += 1;
