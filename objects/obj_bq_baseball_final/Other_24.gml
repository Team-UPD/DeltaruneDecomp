baseball_combo_timer--;
if (hit == -1)
{
	if (image_xscale < 6)
	{
		image_xscale += 0.1;
		image_yscale += 0.1;
	}
	x = (xstart - 5) + irandom(10);
	y = (ystart - 5) + irandom(10);
}
if (hit != 1)
	image_angle += 3;
if (hit == 1)
{
	hit_timer += 1;
	if (hit_timer == 1)
	{
		repeat (3)
		{
			fakesplash = instance_create((x - 20) + irandom(40), (y - 20) + irandom(40), o_boxing_splash);
			fakesplash.friction = -0.5;
			fakesplash.sprite_index = spr_boxing_splash2;
			if (hit_direction == -1)
				fakesplash.hspeed = -1 - random(2);
			if (hit_direction == 1)
				fakesplash.hspeed = 1 + random(2);
			fakesplash.vspeed = 1 + random(2);
		}
		xbase = x;
		ybase = y;
	}
	if (hit_timer > 0 && hit_timer < (40 / f))
	{
		x = (xbase + (40 / hit_timer)) - irandom(80 / hit_timer);
		y = (ybase + (40 / hit_timer)) - irandom(80 / hit_timer);
	}
	if (hit_timer > (100 / f))
		vspeed = -64 / f;
	if (y < -850)
	{
		instance_destroy();
		instance_create(x, y, obj_bq_baseball_final_hits_boss);
	}
}
if (y > 20 && !instance_exists(o_bq_whitefade) && hit != 1)
	instance_create(x, y, o_bq_whitefade);
