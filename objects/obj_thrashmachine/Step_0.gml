dcolor[1] = make_color_hsv(global.flag[223] * 8, 255, 255 * value);
dcolor[0] = make_color_hsv(global.flag[224] * 8, 255, 255 * value);
dcolor[2] = make_color_hsv(global.flag[225] * 8, 255, 255 * value);
part[1] = global.flag[220];
part[0] = global.flag[221];
part[2] = global.flag[222];
basecolor = merge_color(c_black, c_white, value);
