if (draw)
{
	var progress = prog / array_length(pages);
	yloc = -280 + (progress * 240);
	var animindex = sprite_get_number(spr_dog_turn_full) * progress;
	draw_sprite_ext(spr_dog_turn_full, animindex, 280, yloc - 28, 4, 4, 0, c_white, 1);
	var border = 60;
	var left = border;
	var right = 640 - (border * 2);
	var vloc = 460 - border;
	draw_sprite_ext(spr_pxwhite, 0, left, vloc - 20, right, 20, 0, c_white, 1);
	draw_sprite_ext(spr_pxwhite, 0, left + 2, (vloc - 20) + 2, right - 4, 16, 0, c_black, 1);
	draw_sprite_ext(spr_pxwhite, 0, left + 4, (vloc - 20) + 4, (right - 8) * progress, 12, 0, c_white, 1);
}
