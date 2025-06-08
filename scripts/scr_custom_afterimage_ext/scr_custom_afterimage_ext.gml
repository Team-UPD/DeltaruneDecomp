function scr_custom_afterimage_ext(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
{
	afterimage = instance_create(arg3, arg4, arg0);
	afterimage.sprite_index = arg1;
	afterimage.image_index = arg2;
	afterimage.image_blend = image_blend;
	afterimage.image_speed = 0;
	afterimage.depth = depth + 1;
	afterimage.image_angle = image_angle;
	afterimage.image_xscale = arg5;
	afterimage.image_yscale = arg6;
	return afterimage;
}
