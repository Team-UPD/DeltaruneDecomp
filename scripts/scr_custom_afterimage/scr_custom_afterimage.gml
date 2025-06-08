function scr_custom_afterimage(arg0)
{
	afterimage = instance_create(x, y, arg0);
	afterimage.sprite_index = sprite_index;
	afterimage.image_index = image_index;
	afterimage.image_blend = image_blend;
	afterimage.image_speed = 0;
	afterimage.depth = depth + 1;
	afterimage.image_xscale = image_xscale;
	afterimage.image_yscale = image_yscale;
	afterimage.image_angle = image_angle;
	return afterimage;
}
