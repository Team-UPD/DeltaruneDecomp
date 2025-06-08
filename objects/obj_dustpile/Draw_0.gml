draw_sprite_ext(spr_dustpile_parts, 3, x, y, 2, 2, 0, c_white, image_alpha);
if (bust == 0)
{
	draw_sprite_ext(spr_dustpile_parts, 2, x - sin(siner / 5), y + sin(siner / 5), 2, 2, 0, c_white, image_alpha);
	draw_sprite_ext(spr_dustpile_parts, 1, x + cos(siner / 5), y + sin(siner / 5) + 1, 2, 2, 0, c_white, image_alpha);
	draw_sprite_ext(spr_dustpile_parts, 0, x + sin(siner / 5), y + sin(siner / 5), 2, 2, 0, c_white, image_alpha);
}
