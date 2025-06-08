if (inert == 0)
{
	draw_self();
	with (obj_lottery_holemouse_generator)
	{
		if (gentimer > 0)
			other.image_index = 0;
		else
			other.image_index = 1;
	}
	if (image_index == 0)
		draw_amount = 10;
	if (image_index == 1)
	{
		if (draw_amount > 0)
			draw_amount = lerp(draw_amount, 0, 0.1);
		else
			draw_amount = 0;
	}
	draw_sprite_ext(sprite_index, 0, x, y, 2, 2, 0, c_white, draw_amount);
	draw_sprite_ext(spr_lotteryMouseTrigger_down, 0, x + 6, y + 16, 2, 2, 0, c_white, 1);
	draw_sprite_ext(spr_lotteryMouseTrigger_down, 1, x + 6, y + 16, 2, 2, 0, c_white, draw_amount);
}
if (inert == 1)
{
	image_index = 1;
	draw_self();
	draw_sprite_ext(spr_lotteryMouseTrigger_down, 0, x + 6, y + 16, 2, 2, 0, c_white, 1);
}
