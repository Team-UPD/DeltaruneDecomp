function scr_drawinbox(arg0, arg1, arg2, arg3)
{
	var _boxleft = arg0 - (arg2 / 2);
	var _boxtop = arg1 - (arg3 / 2);
	var _xx = (_boxleft - (x - sprite_xoffset)) + 1;
	var _yy = (_boxtop - (y - sprite_yoffset)) + 1;
	draw_sprite_part_ext(sprite_index, image_index, _xx, _yy, arg2, arg3, _boxleft + 1, _boxtop + 1, sign(image_xscale), sign(image_yscale), image_blend, image_alpha);
}
