image_angle = direction;
if (con == 0)
{
	timer += 1;
	if (timer >= 2)
	{
		sons += 1;
		son[sons] = instance_create(x, y, obj_fadechain);
		son[sons].image_angle = image_angle;
		son[sons].direction = direction;
		son[sons].speed = speed / 2.5;
		son[sons].active = 1;
		son[sons].damage = 10;
		scr_bullet_inherit(son[sons]);
		timer = 0;
	}
}
if (sons >= 30)
	instance_destroy();
