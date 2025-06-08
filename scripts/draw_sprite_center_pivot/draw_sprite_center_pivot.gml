function draw_sprite_center_pivot(arg0, arg1, arg2, arg3)
{
	var __theta = point_direction(sprite_width / 2, sprite_height / 2, 0, 0);
	var __radius = point_distance(sprite_width / 2, sprite_height / 2, 0, 0);
	__theta += image_angle;
	var __xx = arg2 + (sprite_width / 2) + lengthdir_x(__radius, __theta);
	var __yy = arg3 + (sprite_height / 2) + lengthdir_y(__radius, __theta);
	draw_sprite_ext(arg0, arg1, __xx, __yy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
