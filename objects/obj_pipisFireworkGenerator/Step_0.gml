with (obj_caterpillarchara)
{
	if (image_alpha <= 0)
		visible = false;
	else
		visible = true;
}
if (con == 0)
{
	with (obj_caterpillarchara)
	{
		if (image_alpha != 1)
			image_alpha = lerp(image_alpha, 1, 0.125);
	}
	if (obj_mainchara.battlemode == 1)
	{
		con = 1;
		timer = 0;
	}
	if (i_ex(obj_overworldbullet_fireworks))
	{
		with (obj_overworldbullet_fireworks)
		{
			image_alpha = lerp(image_alpha, 0, 0.25);
			if (image_alpha == 0)
				instance_destroy();
			timer = 0;
		}
	}
	if (i_ex(obj_overworldbulletparent))
	{
		with (obj_overworldbulletparent)
		{
			image_alpha = lerp(image_alpha, 0, 0.25);
			if (image_alpha == 0)
				instance_destroy();
			timer = 0;
		}
	}
}
if (con == 1)
{
	with (obj_caterpillarchara)
	{
		if (image_alpha != 0)
			image_alpha = lerp(image_alpha, 0, 0.3);
	}
	timer++;
	if (timer >= 20)
	{
		py = cameray() + random_range(0, 120);
		py = clamp(py, 360, 2920);
		py = clamp(py, cameray(), 2920);
		if ((shotcount % 2) == 0)
			px = random_range(-20, -40);
		else
			px = random_range(room_width + 20, room_width + 40);
		pipis = instance_create(px, py, obj_overworldbullet_fireworks);
		pipis.depth = depth - 50;
		shotcount++;
		timer = random_range(-5, 5);
	}
	if (obj_mainchara.battlemode == 0)
	{
		con = 0;
		timer = 0;
	}
}
