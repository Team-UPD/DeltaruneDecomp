if (drawdoor == 1)
{
	visible = 1;
	sprite_index = spr_darkdoor;
	x = 138;
	y = 48;
	draw_set_color(c_black);
	draw_rectangle(138, 27, 181, 74, false);
	if (darkbg == 0)
	{
		px = (global.lang == "en") ? scr_marker(0, 0, bg_library) : scr_marker(0, 0, bg_lang_ja_library);
		px.image_xscale = 1;
		px.image_yscale = 1;
		px.image_alpha = 0.1;
		px.depth = 100000;
		px.image_blend = merge_color(c_gray, c_navy, 0.5);
		px.image_blend = merge_color(px.image_blend, c_white, 0.5);
		darkbg = 1;
	}
	xsin += 0.01;
	if (xsin > 1)
		xsin = 1;
	siner += 1;
	image_index = 1;
	amt = sin(siner / 16) * 0.1;
	for (i = 1; i < 6; i += 1)
		draw_sprite_ext(sprite_index, 2, x, y + sprite_height, 1, (3 / i) + amt, 0, c_white, xsin * (amt + 0.2));
	draw_sprite_ext(spr_darkdoor_middleanchored, 2, 160, 51, 1 + (amt * 3), 1 + (amt * 3), 0, c_white, xsin * (amt + 0.2));
	draw_sprite_ext(spr_darkdoor_middleanchored, 2, 160, 51, 1 + (amt * 2), 1 + (amt * 2), 0, c_white, xsin * (amt + 0.2));
	if (darkbg == 1)
		px.image_alpha = (amt * 3) + xsin;
}
