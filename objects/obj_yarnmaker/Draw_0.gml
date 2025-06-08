if (dont == 0)
{
	if (state == 0)
	{
		draw_sprite_ext(sprite_index, 0, x, y, scale, scale, direction + (sqrt(scale) * 720), c_white, 1);
		if (scale < 1)
		{
			scale += 0.1;
		}
		else
		{
			state = 1;
			mybul = scr_bullet_create(x, y, obj_yarnbullet);
			i_ex(mybul);
			mybul.element = 6;
			mybul.sprite_index = spr_yarnbullet;
			mybul.direction = direction;
			mybul.gravity = childgravity;
			mybul.speed = childspeed;
			mybul.image_angle = direction;
			mybul.grazepoints = grazepoints;
			mybul.updateimageangle = 1;
		}
	}
	else
	{
		instance_destroy();
	}
}
else
{
	dont = 0;
}
