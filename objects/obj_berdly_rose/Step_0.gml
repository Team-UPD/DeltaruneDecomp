if (con == 0)
{
	image_speed = 0;
	startx = 640;
	starty = -60;
	x = startx;
	y = starty;
	finalx = 380;
	finaly = 230;
	siner = 0;
	finaltime = 170;
	initamplitude = 12;
	amplitude = initamplitude;
	con = 1;
}
if (con == 1)
{
	siner++;
	if ((siner % 4) == 0 && siner < (finaltime - 20))
	{
		star = instance_create(x + 30 + random(sprite_width - 30), y + 20 + random(sprite_height - 40), obj_marker);
		with (star)
		{
			image_xscale = 1;
			image_yscale = 1;
			sprite_index = spr_sparestar_anim;
			image_alpha = 1;
			image_speed = 0.25;
			hspeed = 1;
			gravity = -0.2;
			friction = 0.1;
		}
	}
	x = lerp(startx, finalx, siner / finaltime);
	y = lerp(starty, finaly, siner / finaltime);
	x += (sin(siner / 3) * amplitude);
	y += (cos(siner / 4) * amplitude);
	image_index += (0.2 + ((cos(siner / 4) * amplitude) / 32));
	if (siner > (finaltime * 0.75))
		amplitude = lerp(initamplitude, 0, (siner - (finaltime * 0.75)) / (finaltime * 0.25));
	if (siner == finaltime)
	{
		x = finalx;
		y = finaly;
		con = 2;
		timer = 0;
	}
}
if (con == 2)
{
	timer++;
	if (timer >= 60)
	{
		sprite_index = spr_berdly_walk_left_dw;
		image_index = 0;
		timer = 0;
		con = 3;
	}
}
