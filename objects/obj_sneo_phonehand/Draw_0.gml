visibiliytimer++;
if (visibiliytimer < 2)
	exit;
if (image_alpha < 1)
	image_alpha += 0.1;
draw_set_alpha(image_alpha);
draw_set_color(c_green);
draw_line_width(x, y, jointx, jointy, 4);
if (i_ex(boss))
{
	draw_line_width(jointx, jointy, boss.x, boss.y, 4);
	for (i = 0; i < 4; i++)
	{
		draw_sprite_ext(spr_sneo_bullet0, 0, lerp(x, jointx, i / 4), lerp(y, jointy, i / 4), 2, 2, 0, c_green, 1);
		draw_sprite_ext(spr_sneo_bullet0, 0, lerp(jointx, boss.x, i / 4), lerp(jointy, boss.y, i / 4), 2, 2, 0, c_green, 1);
	}
}
draw_self();
draw_set_alpha(1);
