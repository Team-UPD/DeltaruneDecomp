if (warning)
	draw_sprite_ext(spr_tm_whipwarn, (((warning - 1) % 9) / 3) + warnoffset, origx, origy, 1, 1, 0, ((warning % 2) == 0) ? c_red : c_orange, 1);
if (dodraw)
{
	var linkdir = point_direction(origx, origy, x, y);
	for (i = 6; i < 12; i++)
		draw_sprite_ext(spr_whitepixel, 0, lerp(origx, x, i / 12), lerp(origy, y, i / 12), 12, 2, linkdir, c_white, 1);
	draw_sprite_ext(spr_tm_whip_ball, 0, x, y, 1, 1, image_angle, c_white, 1);
}
