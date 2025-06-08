if (drawwhite == 1)
{
	draw_set_color(c_white);
	draw_rectangle(-10, -10, 999, 999, false);
}
if (split == 0)
	draw_self();
if (split == 1)
{
	splity += (0.6 - splitfriction);
	if (splitfriction < 0.5)
		splitfriction += 0.01;
	draw_sprite_ext(sprite_index, 16, x + splity, y - splity, image_xscale, image_yscale, 0, c_white, image_alpha);
	draw_sprite_ext(sprite_index, 15, x - splity, y + splity, image_xscale, image_yscale, 0, c_white, image_alpha);
	draw_sprite_ext(headsprite, image_index, x + splity, y - splity, image_xscale, image_yscale, 0, image_blend, image_alpha);
	draw_set_blend_mode(bm_normal);
	draw_sprite_ext_glow(headsprite, image_index, x + splity, y - splity, image_xscale, image_yscale, 0, c_white, image_alpha, c_white);
	draw_set_blend_mode(bm_add);
	draw_sprite_ext_glow(headsprite, image_index, x + splity, y - splity, image_xscale, image_yscale, 0, headcolor, image_alpha, c_white);
	draw_set_blend_mode(bm_normal);
}
