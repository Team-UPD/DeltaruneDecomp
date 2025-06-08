function scr_drawpart_rotate(arg0, arg1, arg2, arg3, arg4, arg5)
{
	var __theta = point_direction(sprite_xoffset, sprite_yoffset, arg0, arg1);
	var __radius = point_distance(sprite_xoffset, sprite_yoffset, arg0, arg1);
	__theta += image_angle;
	var __xx = x + lengthdir_x(__radius, __theta);
	var __yy = y + lengthdir_y(__radius, __theta);
	draw_sprite_general(sprite_index, image_index, arg0, arg1, arg2, arg3, __xx + arg4, __yy + arg5, image_xscale, image_yscale, image_angle, image_blend, image_blend, image_blend, image_blend, image_alpha);
}
