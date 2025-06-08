if (state == 0 || state == 4)
{
	headtop.image_alpha = 0;
	draw_self();
}
else if (state == 1 || state == 3)
{
	headtop.image_alpha = 1;
	var ease = scr_ease_out(timer / 10, 1);
	draw_sprite_ext(spr_spamton_laugh_bottom, 0, x, y, 2, 2, 0, c_white, 1);
	draw_sprite_ext(spr_spamton_laugh_middle, 0, x, lerp(y - 10, y, ease), 2, 2, 0, c_white, 1);
	headtop.y = lerp(y + 20, y - 4, ease);
}
else
{
	draw_sprite_ext(spr_spamton_laugh_bottom, 0, x, y, 2, 2, 0, c_white, 1);
	draw_sprite_ext(spr_spamton_laugh_middle, 0, x, (y + (cos(timer) * 4)) - 10, 2, 2, 0, c_white, 1);
	headtop.y = y - (cos(timer) * 4);
}
