function scr_dark_marker_depth(arg0, arg1, arg2, arg3)
{
	thismarker = instance_create_depth(arg0, arg1, arg2, obj_marker);
	with (thismarker)
	{
		sprite_index = arg3;
		image_speed = 0;
		image_xscale = 2;
		image_yscale = 2;
	}
	return thismarker;
}
