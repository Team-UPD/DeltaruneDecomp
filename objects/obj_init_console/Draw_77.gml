var ww = window_get_width();
var wh = window_get_height();
var sw = surface_get_width(application_surface);
var sh = surface_get_height(application_surface);
var xx = floor((ww - (sw * global.window_scale)) / 2);
var yy = floor((wh - (sh * global.window_scale)) / 2);
global.window_xofs = xx;
global.window_yofs = yy;
if (scr_is_switch_os() && wh == 720)
	texture_set_interpolation(true);
else
	texture_set_interpolation(false);
draw_enable_alphablend(false);
draw_surface_ext(application_surface, xx, yy, global.window_scale, global.window_scale, 0, c_white, 1);
draw_enable_alphablend(true);
texture_set_interpolation(false);
