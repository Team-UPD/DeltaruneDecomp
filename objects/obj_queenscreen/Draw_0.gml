if (brokenscreen == false)
{
	draw_set_color(c_white);
	draw_self();
	siner++;
	y += (sin(siner / 16) / 4);
	if (tasquecon == 0 && global.flag[8] == 0)
	{
		draw_set_blend_mode(bm_add);
		draw_sprite_ext_flash(sprite_index, image_index, x, y, image_xscale + 0.01, image_yscale + 0.01, image_angle, image_blend, 0.1 + (sin(siner / 5) * 0.1));
		draw_set_blend_mode(bm_normal);
	}
}
if (brokenscreen == true)
{
	if (room == room_dw_mansion_entrance)
	{
		drawindex = 43;
		linecolor = make_color_rgb(223, 255, 171);
	}
	else
	{
		drawindex = 11;
		linecolor = c_lime;
	}
	draw_sprite_ext(spr_queenscreen, drawindex, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
	for (var i = 0; i < 9; i++)
	{
		draw_set_color(linecolor);
		draw_set_alpha(brokeAlpha);
		draw_line_width(x + xx[i], y + yy[i], x + xx[i + 1], y + yy[i + 1], 2);
	}
	timer2++;
	if (timer2 >= 4 && global.flag[8] == 0)
	{
		for (var i = 0; i < 10; i++)
		{
			xx[i] = clamp(xx[i] + random_range(-r / 6, r / 6), -r, r);
			yy[i] = clamp(yy[i] + random_range(-r / 6, r / 6), -r, r);
		}
		timer2 = 0;
	}
	siner++;
	y += (sin(siner / 16) / 4);
	if (tasquecon == 0)
	{
		if (brokeAlpha == 0)
			brokeAlpha = 0.05;
		brokeAlpha *= 1.5;
		if (global.flag[8] == 0)
		{
			draw_set_blend_mode(bm_add);
			draw_sprite_ext_flash(sprite_index, image_index, x, y, image_xscale + 0.01, image_yscale + 0.01, image_angle, image_blend, 0.1 + (sin(siner / 5) * 0.1));
			draw_set_blend_mode(bm_normal);
		}
	}
}
