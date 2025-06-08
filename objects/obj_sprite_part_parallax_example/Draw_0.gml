image_xscale = 2;
image_yscale = 2;
siner++;
draw_set_color(c_yellow);
draw_rectangle(x, y, x + 80, y + 80, false);
if (dontdraw == false)
	draw_sprite_part_parallax_scale(sprite_index, siner / 8, siner / 8, siner / 8, 0.3, 3);
if (dontdraw == false)
	draw_sprite_part_parallax(sprite_index, siner / 8, siner / 3, siner / 6, 1);
