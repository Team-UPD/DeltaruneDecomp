fill_yscale = obj_queen_enemy.shieldacthp / obj_queen_enemy.shieldactmaxhp;
if (fill_yscale_gradual > fill_yscale)
	fill_yscale_gradual -= 0.005;
draw_sprite_ext(spr_queen_wine_fill, 0, x + lengthdir_x(9 * image_xscale, image_angle + 270), y + lengthdir_y(9 * image_yscale, image_angle + 270), image_xscale, image_yscale * fill_yscale_gradual, image_angle, c_white, image_alpha);
draw_sprite_ext(spr_queen_wine_fill, 1, x + lengthdir_x(8 * image_xscale, image_angle + 270), y + lengthdir_y(8 * image_yscale, image_angle + 270), image_xscale, image_yscale, image_angle, c_white, image_alpha);
draw_self();
