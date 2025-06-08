if (type == 0)
	draw_self();
if (type == 1)
{
	if (mousefailcon == 0)
	{
		draw_self();
		lettercolor = c_red;
		var ones = miceheld % 10;
		var tens = miceheld div 10;
		draw_sprite_ext(spr_teacup_scoreboard_digits, ones, x + 10, y - 8, 2, 2, 0, lettercolor, 1);
		draw_sprite_ext(spr_teacup_scoreboard_digits, 10 + tens, x + 10, y - 8, 2, 2, 0, lettercolor, 1);
	}
	else
	{
		draw_sprite_ext(sprite_index, 1, x - 35, y + 24, 2, 2, 0, c_white, 1);
	}
}
