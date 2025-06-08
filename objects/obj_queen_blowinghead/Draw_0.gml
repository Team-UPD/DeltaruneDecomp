if (scr_queen_buffercheck())
{
	draw_self();
	if (original_image_speed < 0)
		original_image_speed = image_speed;
	image_speed = 0;
	exit;
}
else if (original_image_speed >= 0)
{
	image_speed = original_image_speed;
	original_image_speed = -1;
}
timer--;
if (blowing)
{
	if (blowstate == 0)
	{
		sprite_index = spr_queen_wireframe;
		image_index = 1;
		image_speed = 0;
		timer = 5;
		blowstate = 1;
	}
	if (timer == 0)
		image_index = 2;
}
else
{
	if (blowstate == 1)
	{
		image_index = 0;
		image_speed = 0;
		blowstate = 0;
		timer = 10;
	}
	if (timer == 0)
	{
		image_speed = 1;
		image_index = 0;
		sprite_index = spr_queen_wireframe_blink;
	}
	if (image_index == 3 && timer <= -12)
	{
		timer = 100;
		image_index = 0;
		sprite_index = spr_queen_wireframe;
		image_speed = 0;
	}
}
if (scale < 1)
{
	scale += 0.1;
	image_xscale = scale;
	image_yscale = scale;
	image_angle = scale * 360;
	af = scr_afterimage();
	af.image_alpha = 0.5;
}
draw_self();
