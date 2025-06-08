fill_yscale = obj_queen_enemy.shieldacthp / obj_queen_enemy.shieldactmaxhp;
if (fill_yscale_gradual > fill_yscale)
	fill_yscale_gradual -= 0.02;
if (alpha2 < 1)
	alpha2 += 0.04;
else
	alpha2 = 1;
if (obj_queen_enemy.image_alpha < 1)
{
	alpha2 = obj_queen_enemy.image_alpha;
	image_alpha = obj_queen_enemy.image_alpha;
}
if (obj_queen_enemy.image_alpha == 1 && image_alpha == 0.9)
{
	alpha2 = 1;
	image_alpha = 1;
}
if (fill_yscale_gradual < 0.02)
{
	if (wine_bottom_xscale > 0)
		wine_bottom_xscale -= 0.02;
	if (wine_bottom_yscale > 0)
		wine_bottom_yscale -= 0.02;
	wine_bottom_yoffset += 0.5;
}
if (nofill == 0)
{
	draw_sprite_ext(spr_queen_wine_fill, 0, x + lengthdir_x(9 * image_xscale, image_angle + 270), y + lengthdir_y(9 * image_yscale, image_angle + 270), image_xscale, image_yscale * fill_yscale_gradual, image_angle, c_white, image_alpha);
	draw_sprite_ext(spr_queen_wine_fill, 1, x + lengthdir_x((wine_bottom_yoffset + 8) * image_xscale, image_angle + 270), y + lengthdir_y((wine_bottom_yoffset + 8) * image_yscale, image_angle + 270), wine_bottom_xscale, wine_bottom_yscale, image_angle, c_white, image_alpha);
	draw_sprite_ext(spr_queen_wine_fill, 0, x + lengthdir_x(9 * image_xscale, image_angle + 270), y + lengthdir_y(9 * image_yscale, image_angle + 270), image_xscale, image_yscale * fill_yscale_gradual, image_angle, c_lime, alpha2);
	draw_sprite_ext(spr_queen_wine_fill, 1, x + lengthdir_x((wine_bottom_yoffset + 8) * image_xscale, image_angle + 270), y + lengthdir_y((wine_bottom_yoffset + 8) * image_yscale, image_angle + 270), wine_bottom_xscale, wine_bottom_yscale, image_angle, c_lime, alpha2);
}
draw_self();
