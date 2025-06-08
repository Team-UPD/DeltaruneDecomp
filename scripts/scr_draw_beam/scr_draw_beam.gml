function scr_draw_beam(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
{
	var __xx = arg0;
	var __yy = arg1;
	var _end0 = scr_rotatevector(arg2, 0, arg4);
	_end0.x += __xx;
	_end0.y += __yy;
	var _end1 = scr_rotatevector(arg2, 0, arg4 + (arg3 / 2));
	_end1.x += __xx;
	_end1.y += __yy;
	var _end2 = scr_rotatevector(arg2, 0, arg4 - (arg3 / 2));
	_end2.x += __xx;
	_end2.y += __yy;
	draw_set_color(arg5);
	draw_set_alpha(arg6);
	if (arg7)
		draw_circle(_end0.x, _end0.y, arg3 / 2, 0);
	draw_triangle(__xx, __yy, _end1.x, _end1.y, _end2.x, _end2.y, 0);
}
