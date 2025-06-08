if (init == 0)
{
	init = 1;
	if (crushedObj != 1)
		offsetCap = (crushedObj == 2) ? 15 : 0;
}
if (vbounce == 1)
{
	if (y > bottomy)
	{
		y = bottomy - 1;
		vspeed = -abs(vspeed);
	}
	if (y < topy)
	{
		y = topy + 1;
		vspeed = abs(vspeed);
	}
}
siner += 0.4;
x = xstart + (sin(siner / 6) * 60);
shoottimer++;
if (shoottimer >= 54)
{
	var b = 0;
	repeat (3)
	{
		radialshot = instance_create(x, y, obj_collidebullet);
		with (radialshot)
			scr_bullet_init();
		radialshot.sprite_index = spr_diamondbullet;
		radialshot.direction = point_direction(radialshot.x, radialshot.y, obj_heart.x + 10, obj_heart.y + 10);
		radialshot.image_angle = radialshot.direction;
		radialshot.image_xscale = 1;
		radialshot.image_yscale = 1;
		radialshot.image_blend = c_red;
		radialshot.active = 1;
		radialshot.speed = 3.5;
		radialshot.friction = -0.33 + b;
		radialshot.depth = depth - 1;
		radialshot.target = target;
		radialshot.damage = damage;
		radialshot.grazed = 0;
		radialshot.element = 6;
		shoottimer = 0;
		b += 0.07;
	}
}
