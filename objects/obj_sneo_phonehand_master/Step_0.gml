siner++;
bluesiner++;
image_blend = merge_color(#00A2E8, c_aqua, 0.25 + (sin(bluesiner / 3) * 0.25));
if (x >= (camerax() + 480))
	x = camerax() + 480;
if (grazed == 1)
{
	grazetimer += 1;
	if (grazetimer >= 3)
	{
		grazetimer = 0;
		grazed = 0;
	}
}
if (instance_exists(obj_heart))
{
	if (obj_heart.x > (obj_sneo_phonehand_master.x - 36))
		obj_heart.x = obj_sneo_phonehand_master.x - 36;
}
if (init == 0)
{
	if (difficulty == 2)
	{
		with (obj_sneo_phonehand)
			alt = 1;
	}
	phonehand_top.target = target;
	phonehand_bottom.target = target;
	init = 1;
}
if (difficulty == 0)
	y = ystart + (sin(siner / 8) * 40);
if (difficulty == 1 || difficulty == 2)
	y = ystart + (sin(siner / 10) * 60);
if (i_ex(phonehand_top))
{
	if (difficulty < 2)
		x = lerp(x, phonehand_top.x + xdist, 0.2);
	else
		x -= 1;
}
if (difficulty == 0 || difficulty == 1 || difficulty == 2)
{
	btimer++;
	threshold = 20;
	if (difficulty == 1)
		threshold = 15;
	if (difficulty == 2)
		threshold = 30;
	if (btimer >= threshold && image_alpha >= 1)
	{
		btimer = 0;
		if (difficulty < 2)
			shot = instance_create(x, y, obj_sneo_mmx_spreadshot);
		else
			shot = instance_create(x, y, obj_basicbullet_sneo);
		shot.speed = 12;
		shot.image_xscale = 3;
		shot.image_yscale = 3;
		if (difficulty < 2)
			shot.friction = 1;
		else
			shot.speed = 10;
		shot.alarm[0] = 25;
		shot.direction = 180 + random_range(-5, 5);
		shot.depth = depth - 1;
		shot.target = target;
		sprite_index = spr_sneo_head_open;
		alarm[0] = 10;
	}
}
