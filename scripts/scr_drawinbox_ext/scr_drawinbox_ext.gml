function scr_drawinbox_ext(arg0, arg1, arg2, arg3)
{
	var _boxleft, _boxtop, _yy, _xx;
	_minx = arg0 - (arg2 / 2);
	_miny = arg1 - (arg3 / 2);
	_maxx = (_boxleft - (x - sprite_xoffset)) + 1;
	_maxy = (_boxtop - (y - sprite_yoffset)) + 1;
	draw_sprite_part_ext(sprite_index, image_index, _xx, _yy, arg2, arg3, _boxleft + 1, _boxtop + 1, sign(image_xscale), sign(image_yscale), image_blend, image_alpha);
}
