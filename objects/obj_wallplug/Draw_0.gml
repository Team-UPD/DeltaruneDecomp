if (con == 0)
	draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, 1);
if (con != 0)
{
	maxball = 10;
	for (i = 0; i < maxball; i += 1)
		draw_sprite_ext(spr_ch2_gimmick_wallplug_ball, 0, lerp(basex, x, i / maxball), lerp(basey, y, i / maxball), 2, 2, 0, c_white, 1);
	draw_self();
}
