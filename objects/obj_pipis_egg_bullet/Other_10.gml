fx = instance_create(x, y, obj_pipis_destroy_fx);
fx.image_xscale = 1.5;
fx.image_yscale = 1.5;
if (obj_spamton_neo_enemy.difficulty != 4)
{
	if (type == 2)
	{
		for (i = 0; i < 10; i++)
		{
			hed = instance_create(x, y, obj_pipis_bullet_cone);
			hed.direction = (point_direction(x, y, obj_heart.x + 10, obj_heart.y + 10) - 25) + random(50);
			hed.speed = 15 + random(5);
			hed.depth = depth - 100;
			hed.sprite_index = spr_sneo_crew;
			hed.image_xscale = 0.5;
			hed.image_yscale = 0.5;
			hed.target = target;
			hed.damage = damage;
			hed.grazed = 0;
			hed.element = 6;
		}
	}
	else if (type == 3)
	{
		for (i = 0; i < 10; i++)
		{
			hed = instance_create(x, y, obj_pipis_bullet_cone);
			hed.direction = (point_direction(x, y, obj_heart.x + 10, obj_heart.y + 10) - 20) + random(40);
			hed.speed = 15 + random(5);
			hed.depth = depth - 100;
			hed.target = target;
			hed.damage = damage;
			hed.grazed = 0;
			hed.element = 6;
		}
	}
	else
	{
		center = instance_create(x, y, obj_pipis_center);
		center.target = target;
		center.damage = damage;
	}
}
if (obj_spamton_neo_enemy.difficulty == 4)
{
	for (i = 0; i < 15; i++)
	{
		radialshot = instance_create(x, y, obj_sneo_heatattack_bullet);
		with (radialshot)
			scr_bullet_init();
		radialshot.sprite_index = spr_diamondbullet;
		radialshot.dir = ((i * 24) + random(14)) - 7;
		radialshot.active = 1;
		radialshot.depth = depth - 100;
		radialshot.target = target;
		radialshot.damage = damage;
		radialshot.grazed = 0;
		radialshot.element = 6;
	}
	radialshot = instance_create(x, y, obj_sneo_heatattack_bullet);
	with (radialshot)
		scr_bullet_init();
	radialshot.sprite_index = spr_diamondbullet;
	radialshot.dir = point_direction(x, y, obj_heart.x + 10, obj_heart.y + 10);
	radialshot.active = 1;
	radialshot.depth = depth - 100;
	radialshot.target = target;
	radialshot.damage = damage;
	radialshot.grazed = 0;
	radialshot.element = 6;
	radialshot = instance_create(x, y, obj_sneo_heatattack_bullet);
	with (radialshot)
		scr_bullet_init();
	radialshot.sprite_index = spr_diamondbullet;
	radialshot.dir = point_direction(x, y, obj_heart.x + 10, (obj_heart.y + 10) - 40);
	radialshot.active = 1;
	radialshot.depth = depth - 100;
	radialshot.target = target;
	radialshot.damage = damage;
	radialshot.grazed = 0;
	radialshot.element = 6;
	radialshot = instance_create(x, y, obj_sneo_heatattack_bullet);
	with (radialshot)
		scr_bullet_init();
	radialshot.sprite_index = spr_diamondbullet;
	radialshot.dir = point_direction(x, y, obj_heart.x + 10, obj_heart.y + 10 + 40);
	radialshot.active = 1;
	radialshot.depth = depth - 100;
	radialshot.target = target;
	radialshot.damage = damage;
	radialshot.grazed = 0;
	radialshot.element = 6;
}
repeat (3)
{
	fx = instance_create(x, y, obj_pipis_egg_bullet_piece);
	fx.image_index = random(3);
	fx.image_xscale = 2;
	fx.image_yscale = 2;
	fx.direction = 45 + random(90);
}
instance_destroy();
