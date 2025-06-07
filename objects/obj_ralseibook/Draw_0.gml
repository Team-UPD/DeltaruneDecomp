if (page < 2)
	draw_sprite_ext(spr_rbook, 0, xx, yy, 1, 1, 0, c_white, 1);
if (turning == 1)
{
	siner += 1;
	turntimer += abs(sin(((2 * pi) * siner) / 24) * 2.8);
	grey1 = merge_color(c_white, c_gray, turntimer / 10);
	grey2 = merge_color(c_white, c_gray, (20 - turntimer) / 10);
	if (turntimer >= 20)
	{
		page += 1;
		turntimer = 0;
		turning = 0;
	}
}
if (turning == -1)
{
	siner += 1;
	turntimer -= abs(sin(((2 * pi) * siner) / 24) * 2.8);
	grey1 = merge_color(c_white, c_gray, -turntimer / 10);
	grey2 = merge_color(c_white, c_gray, (20 + turntimer) / 10);
	if (turntimer <= -20)
	{
		page -= 1;
		turntimer = 0;
		turning = 0;
	}
}
for (i = 7; i >= -1; i -= 1)
{
	if (page < i && turning == 0)
	{
		if (page > -1)
			draw_sprite_part_ext(spr_rbook, i, 0, 0, sprite_width / 2, sprite_height, xx, yy, 1, 1, c_white, 1);
		draw_sprite_part_ext(spr_rbook, i, sprite_width / 2, 0, sprite_width / 2, sprite_height, xx + (sprite_width / 2), yy, 1, 1, c_white, 1);
	}
	if (turnpage == i)
	{
		if (turning == -1)
		{
			draw_sprite_part_ext(spr_rbook, i + 1, sprite_width / 2, 0, sprite_width / 2, sprite_height, xx + (sprite_width / 2), yy, 1, 1, c_white, 1);
			if (page > -1)
				draw_sprite_part_ext(spr_rbook, i, 0, 0, sprite_width / 2, sprite_height, xx, yy, 1, 1, c_white, 1);
			if (turntimer > -10)
				draw_sprite_part_ext(spr_rbook, i + 1, 0, 0, sprite_width / 2, sprite_height, xx - (((turntimer / 10) * sprite_width) / 2), yy, 1 + (turntimer / 10), 1, grey1, 1);
			if (turntimer < -10)
				draw_sprite_part_ext(spr_rbook, i, sprite_width / 2, 0, sprite_width / 2, sprite_height, xx + (sprite_width / 2), yy, -1 - (turntimer / 10), 1, grey2, 1);
		}
		if (turning == 1)
		{
			draw_sprite_part_ext(spr_rbook, i + 1, 0, 0, sprite_width / 2, sprite_height, xx, yy, 1, 1, c_white, 1);
			if (page < 5)
				draw_sprite_part_ext(spr_rbook, i + 2, sprite_width / 2, 0, sprite_width / 2, sprite_height, xx + (sprite_width / 2), yy, 1, 1, c_white, 1);
			if (turntimer < 10)
				draw_sprite_part_ext(spr_rbook, i + 1, sprite_width / 2, 0, sprite_width / 2, sprite_height, xx + (sprite_width / 2), yy, 1 - (turntimer / 10), 1, grey1, 1);
			if (turntimer > 10)
				draw_sprite_part_ext(spr_rbook, i + 2, 0, 0, sprite_width / 2, sprite_height, (xx + (sprite_width / 2)) - ((((turntimer - 10) / 10) * sprite_width) / 2), yy, (turntimer - 10) / 10, 1, grey2, 1);
		}
	}
}
