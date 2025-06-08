if (timer > 10)
{
	with (instance_create_depth(x, y, 0, obj_beatflash))
	{
		if (other.dir == "left")
			image_angle = 270;
		if (other.dir == "right")
			image_angle = 90;
		image_xscale = other.sprite_width;
		image_yscale = (1 / sprite_height) * 300;
	}
}
if (i_ex(glow))
{
	with (glow)
		instance_destroy();
}
