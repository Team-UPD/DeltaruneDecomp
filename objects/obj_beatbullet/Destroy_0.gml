with (instance_create_depth(x, y, 0, obj_beatflash))
{
	image_xscale = other.sprite_width;
	image_yscale = (1 / sprite_height) * 300;
}
if (scr_outside_camera(0) == 0)
{
	with (obj_beatbulletroom)
		playsound = 1;
}
