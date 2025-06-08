function scr_drawpart_rotate_ext(arg0, arg1, arg2, arg3)
{
	var __theta = point_direction(sprite_xoffset, sprite_yoffset, arg2, arg3);
	var __radius = point_distance(sprite_xoffset, sprite_yoffset, arg2, arg3);
	__theta += image_angle;
	var __xx = x + lengthdir_x(__radius, __theta);
	var __yy = y + lengthdir_y(__radius, __theta);
	draw_sprite_general(arg0, arg1, arg2, arg3, arg2, arg3, __xx, __yy, image_xscale, image_yscale, image_angle, image_blend, image_blend, image_blend, image_blend, image_alpha);
}
