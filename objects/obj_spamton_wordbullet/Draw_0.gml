if ((x - sprite_xoffset) < mouthx)
{
	draw_set_color(c_black);
	scr_84_set_draw_font("main");
	if (scale < 3)
		scale += 0.025;
	image_xscale = scale * 0.5;
	image_yscale = scale * 0.8;
	xx = x - (3 * scale);
	yy = y - (9 * scale);
	draw_text_transformed(xx + scale, yy, bulletletter, scale, scale, 0);
	draw_text_transformed(xx, yy + scale, bulletletter, scale, scale, 0);
	draw_text_transformed(xx - scale, yy, bulletletter, scale, scale, 0);
	draw_text_transformed(xx, yy - scale, bulletletter, scale, scale, 0);
	draw_set_color(c_white);
	draw_text_transformed(xx, yy, bulletletter, scale, scale, 0);
}
