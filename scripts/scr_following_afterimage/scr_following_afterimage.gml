function scr_following_afterimage()
{
	var __source = (argument_count == 2) ? argument[1] : self;
	afterimage = instance_create(__source.x, __source.y, argument[0]);
	afterimage.parent = __source;
	afterimage.sprite_index = __source.sprite_index;
	afterimage.image_index = __source.image_index;
	afterimage.image_blend = __source.image_blend;
	afterimage.image_speed = 0;
	afterimage.depth = __source.depth;
	afterimage.image_xscale = __source.image_xscale;
	afterimage.image_yscale = __source.image_yscale;
	afterimage.image_angle = __source.image_angle;
	return afterimage;
}
