timer++;
if (timer == 3 && image_index == 0)
{
	image_index = 1;
	timer = 0;
}
else if (timer == 3 && image_index == 1)
{
	image_index = 0;
	timer = 0;
}
siner += 4;
image_xscale = 2 + (sin(siner / 6) * 0.5);
image_yscale = 2 + (sin(siner / 6) * 0.5);
if (siner == 96)
{
	snd_play(snd_rocket);
	var a = random(44);
	repeat (8)
	{
		radialshot = instance_create(x, y, obj_sneo_heatattack_bullet);
		with (radialshot)
			scr_bullet_init();
		radialshot.sprite_index = spr_diamondbullet;
		radialshot.direction = a;
		radialshot.image_angle = a;
		radialshot.active = 1;
		radialshot.speed = 1;
		radialshot.friction = -0.34;
		radialshot.depth = depth - 1;
		radialshot.target = target;
		radialshot.damage = damage;
		radialshot.grazed = 0;
		radialshot.newtype = 1;
		radialshot.element = 6;
		radialshot = instance_create(x, y, obj_sneo_heatattack_bullet);
		with (radialshot)
			scr_bullet_init();
		radialshot.sprite_index = spr_diamondbullet;
		radialshot.direction = a + 10;
		radialshot.image_angle = a + 10;
		radialshot.active = 1;
		radialshot.speed = 1;
		radialshot.friction = -0.1;
		radialshot.depth = depth - 1;
		radialshot.target = target;
		radialshot.damage = damage;
		radialshot.grazed = 0;
		radialshot.newtype = 1;
		radialshot.element = 6;
		a += 45;
	}
	instance_destroy();
}
