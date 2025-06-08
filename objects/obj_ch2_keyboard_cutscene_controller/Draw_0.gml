var _xx = (puzzle_id == 2) ? 138 : 198;
var _yy = (puzzle_id == 2) ? 50 : 70;
draw_set_font(fnt_mainbig);
draw_set_color(c_white);
draw_text(_xx, _yy, noelleString);
draw_set_color(c_lime);
if (lost)
	draw_set_color(c_red);
if (won)
	draw_set_color(c_yellow);
draw_text(_xx, _yy + 28, currentString);
if (won)
{
	imageTimer += 0.1;
	var scaleTimer = (imageTimer < 4.5) ? (scr_ease_out(imageTimer / 4.5, 4) * 4.5) : 4.5;
	scaleTimer = sin(scaleTimer * pi);
	draw_sprite_ext(victorySprite, imageTimer, 400 + ((1 - scaleTimer) * sprite_get_width(victorySprite)), 80, scaleTimer * 2, 2, 0, image_blend, image_alpha);
	if (room == room_dw_cyber_keyboard_puzzle_1)
	{
		if (instance_exists(obj_forcefield))
		{
			with (obj_forcefield)
				instance_destroy();
		}
		global.flag[390] = 1;
	}
	if (room == room_dw_cyber_keyboard_puzzle_2)
		global.flag[333] = 1;
}
