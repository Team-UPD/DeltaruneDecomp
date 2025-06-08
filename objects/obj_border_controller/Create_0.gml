loaded = false;
border_fade_out = false;
border_fade_in = false;
border_alpha = 0;
border_fade_value = 0.025;
_border_image = border_lw_town;
ww = window_get_width();
wh = window_get_height();
sw = surface_get_width(application_surface);
sh = surface_get_height(application_surface);
var scale_w = ww / sw;
var scale_h = wh / sh;
screenshot = -1;
if (scr_is_switch_os() && wh == 720)
	global.window_scale = 4/3;
else
	global.window_scale = floor(min(scale_w, scale_h));
