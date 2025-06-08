if (instance_exists(obj_spamton_neo_enemy))
	damage = global.monsterat[obj_spamton_neo_enemy.myself] * 5;
if (global.turntimer < 1)
	instance_destroy();
dontexplode = 1;
if (instance_exists(obj_heart))
{
	if (y > (cameray() + 280))
		depth = obj_heart.depth + 100;
	else
		depth = obj_heart.depth + 2;
}
else if (instance_exists(obj_sneo_lilguy))
{
	depth = obj_sneo_lilguy.depth - 1;
}
else
{
	depth = obj_heart.depth + 2;
}
if (con == 0)
{
	siner += (1 * f);
	image_xscale = 0.5 + (sin(siner / 4) * 0.1 * f);
	image_yscale = 0.5 + (sin(siner / 4) * 0.1 * f);
	if (siner >= 30 && dontexplode == 0)
		con = 1;
}
if (con == 1)
{
	image_xscale -= (0.05 * f);
	image_yscale -= (0.05 * f);
	if (image_xscale <= 0 && image_yscale <= 0)
	{
		uniformangleoff = random(360);
		uniformanglespeed = -1 + random(2);
		shotamount = 20;
		off = 0;
		for (i = 0; i < shotamount; i += 1)
		{
			shot[i] = instance_create(x, y, obj_basicbullet_sneo);
			if (off == 0)
			{
				shot[i].destroyable = 1;
				shot[i].image_blend = c_yellow;
				off = 1;
			}
			else
			{
				off = 0;
			}
			shot[i].speed = 1 * f;
			shot[i].friction = -0.05 * f;
			if (mode == 1)
				shot[i].angle_speed = uniformanglespeed;
			if (mode == 5)
				shot[i].angle_speed = -2 + random(4);
			shot[i].image_xscale = 1.5;
			shot[i].image_yscale = 1.5;
			shot[i].sprite_index = spr_sneo_bullet_arrow;
		}
		instance_destroy();
	}
}
