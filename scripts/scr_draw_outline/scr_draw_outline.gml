function scr_draw_outline(arg0, arg1, arg2)
{
	gpu_set_fog(true, arg1, 0, 0);
	var __xdirA = arg0;
	var __xdirB = 0;
	var __ydirA = 0;
	var __ydirB = arg0;
	if ((image_angle % 90) != 0)
	{
		__xdirA = lengthdir_x(arg0, image_angle);
		__xdirB = lengthdir_x(arg0, image_angle + 90);
		__ydirA = lengthdir_y(arg0, image_angle + 90);
		__ydirB = lengthdir_y(arg0, image_angle);
	}
	draw_sprite_ext(sprite_index, image_index, x + __xdirA, y + __ydirA, image_xscale, image_yscale, image_angle, c_white, image_alpha * arg2);
	draw_sprite_ext(sprite_index, image_index, x - __xdirA, y - __ydirA, image_xscale, image_yscale, image_angle, c_white, image_alpha * arg2);
	draw_sprite_ext(sprite_index, image_index, x + __xdirB, y + __ydirB, image_xscale, image_yscale, image_angle, c_white, image_alpha * arg2);
	draw_sprite_ext(sprite_index, image_index, x - __xdirB, y - __ydirB, image_xscale, image_yscale, image_angle, c_white, image_alpha * arg2);
	gpu_set_fog(false, c_white, 0, 0);
}
