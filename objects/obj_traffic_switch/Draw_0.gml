image_blend = c_white;
if (active == 1 && type == 1)
	image_index = 0;
if (active == 0)
	image_index = 0;
if (active == 1 && type == 0)
	image_index = 1;
draw_self();
blend = c_gray;
if (active == 1 && type == 1)
	blend = c_lime;
if (active == 1 && type == 0)
	blend = c_red;
if (active == 0 && clear_traffic)
	blend = c_lime;
timernumber = ceil(timer / timefactor);
draw_sprite_ext(spr_trafficswitch_symbol, type, x, y, 2, 2, 0, blend, image_alpha);
if (type != 2)
{
	timeNumber = clamp(timernumber, 0, 9);
	draw_sprite_ext(spr_numbersfontbig, timeNumber, x + 10, y + 14, 1, 1, 0, blend, 1);
}
