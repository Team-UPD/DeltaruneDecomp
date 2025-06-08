blend = c_white;
if (type == 0)
	blend = c_red;
if (type == 1)
	blend = c_orange;
if (type == 2)
	blend = c_yellow;
if (type == 3)
	blend = c_purple;
if (myinteract != 3)
{
	siner = 0;
	draw_sprite_ext(spr_puzzlemaster_body, type, x, y, 2, 2, 0, c_white, 1);
	draw_sprite_ext(spr_puzzlemaster_face0, type, x + 24, y + 16, 2, 2, 0, blend, 1);
	if (beanie[0] == 1)
		draw_sprite_ext(spr_puzzlemaster_beanie, type, x + 24, y - 2, 2, 2, 0, blend, 1);
	if (beanie[1] == 1)
		draw_sprite_ext(spr_puzzlemaster_beanie, type, x + 2, y - 8, 2, 2, 0, blend, 1);
	if (beanie[2] == 1)
		draw_sprite_ext(spr_puzzlemaster_beanie, type, x + 44, y - 8, 2, 2, 0, blend, 1);
}
if (myinteract == 3)
{
	siner += 1;
	if (global.flag[20] == 0)
	{
		draw_sprite_ext(spr_puzzlemaster_body, type, x, y - (sin(siner / 4) * 3), 2, 2 + (sin(siner / 4) * 0.1), 0, c_white, 1);
		draw_sprite_ext(spr_puzzlemaster_face0, type, x + 24 + (sin(siner / 8) * 4), y + 16 + (sin(siner / 4) * 2), 2, 2, 0, blend, 1);
		if (beanie[0] == 1)
			draw_sprite_ext(spr_puzzlemaster_beanie, type, x + 24 + sin(siner / 8), y - 2 - (sin(siner / 4) * 4), 2, 2, 0, blend, 1);
		if (beanie[1] == 1)
			draw_sprite_ext(spr_puzzlemaster_beanie, type, x + 2 + sin(siner / 8), y - 8 - (sin(siner / 4) * 4), 2, 2, 0, blend, 1);
		if (beanie[2] == 1)
			draw_sprite_ext(spr_puzzlemaster_beanie, type, x + 44 + sin(siner / 8), y - 8 - (sin(siner / 4) * 4), 2, 2, 0, blend, 1);
	}
	if (global.flag[20] == 1)
	{
		r = choose(-1, 0, 1);
		r2 = choose(-1, 0, 1);
		draw_sprite_ext(spr_puzzlemaster_body, type, x, y, 2, 2, 0, c_white, 1);
		draw_sprite_ext(spr_puzzlemaster_face1, type, x + 24 + sin(siner), y + 16, 2, 2, 0, c_white, 1);
		if (beanie[0] == 1)
			draw_sprite_ext(spr_puzzlemaster_beanie, type, x + 24, (y - 12) + sin(siner), 2, 2, 0, blend, 1);
		if (beanie[1] == 1)
			draw_sprite_ext(spr_puzzlemaster_beanie, type, x + 2, (y - 18) + sin(siner), 2, 2, 0, blend, 1);
		if (beanie[2] == 1)
			draw_sprite_ext(spr_puzzlemaster_beanie, type, x + 44, (y - 18) + sin(siner), 2, 2, 0, blend, 1);
	}
}
