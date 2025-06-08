if (drawblack)
{
	var i = 0;
	draw_set_color(merge_color(c_dkgray, c_navy, 0.3));
	draw_rectangle(camerax() - 80, (cameray() + 360) - (cameray() / 40), camerax() + 720, cameray() + 600, false);
	draw_set_alpha(0.3);
	for (i = 0; i < 6; i++)
	{
		draw_set_color(c_black);
		draw_rectangle(camerax() - 80, cameray() + 340 + (i * 20), camerax() + 720, cameray() + 600, false);
	}
	draw_set_alpha(1);
}
if (room == room_dw_cyber_battle_maze_1 || room == room_dw_cyber_tasque_battle || room == room_dw_cyber_maze_queenscreen)
{
	for (var i = 0; i < 1; i++)
		draw_sprite_ext(spr_blackTile_20alpha, 0, 0, 244, room_scale, 0.9, 0, c_white, 1);
	for (var i = 0; i < 3; i++)
		draw_sprite_ext(spr_blackTile_20alpha, 0, 0, 280, room_scale, 1, 0, c_white, 1);
	for (var i = 0; i < 5; i++)
		draw_sprite_ext(spr_blackTile_20alpha, 0, 0, 320, room_scale, 1, 0, c_white, 1);
	for (var i = 0; i < 7; i++)
		draw_sprite_ext(spr_blackTile_20alpha, 0, 0, 360, room_scale, 1, 0, c_white, 1);
	for (var i = 0; i < 9; i++)
		draw_sprite_ext(spr_blackTile_20alpha, 0, 0, 400, room_scale, 1, 0, c_white, 1);
	draw_set_color(c_black);
	draw_rectangle(-100, 360, room_width, room_height + 10, false);
}
if (room == room_dw_cyber_teacup_final)
{
	for (var i = 0; i < 1; i++)
		draw_sprite_ext(spr_blackTile_20alpha, 0, 0, 8744, room_scale, 0.9, 0, c_white, 1);
	for (var i = 0; i < 3; i++)
		draw_sprite_ext(spr_blackTile_20alpha, 0, 0, 8780, room_scale, 1, 0, c_white, 1);
	for (var i = 0; i < 5; i++)
		draw_sprite_ext(spr_blackTile_20alpha, 0, 0, 8820, room_scale, 1, 0, c_white, 1);
	for (var i = 0; i < 7; i++)
		draw_sprite_ext(spr_blackTile_20alpha, 0, 0, 8860, room_scale, 1, 0, c_white, 1);
	for (var i = 0; i < 9; i++)
		draw_sprite_ext(spr_blackTile_20alpha, 0, 0, 8900, room_scale, 1, 0, c_white, 1);
	draw_set_color(c_black);
	draw_rectangle(-100, 8860, 2000, room_height + 10, false);
}
if (room == room_dw_cyber_post_music_boss_slide)
{
	for (var i = 0; i < 9; i++)
		draw_sprite_ext(spr_blackTile_20alpha, 0, 2480, 0, 1, room_height, 0, c_white, 1);
	for (var i = 0; i < 7; i++)
		draw_sprite_ext(spr_blackTile_20alpha, 0, 2440, 0, 1, room_height, 0, c_white, 1);
	for (var i = 0; i < 5; i++)
		draw_sprite_ext(spr_blackTile_20alpha, 0, 2400, 0, 1, room_height, 0, c_white, 1);
	for (var i = 0; i < 3; i++)
		draw_sprite_ext(spr_blackTile_20alpha, 0, 2360, 0, 1, room_height, 0, c_white, 1);
	for (var i = 0; i < 1; i++)
		draw_sprite_ext(spr_blackTile_20alpha, 0, 2320, 0, 1, room_height, 0, c_white, 1);
	for (var i = 0; i < 9; i++)
		draw_sprite_ext(spr_blackTile_20alpha, 0, 840, 0, 1, room_height, 0, c_white, 1);
	for (var i = 0; i < 7; i++)
		draw_sprite_ext(spr_blackTile_20alpha, 0, 880, 0, 1, room_height, 0, c_white, 1);
	for (var i = 0; i < 5; i++)
		draw_sprite_ext(spr_blackTile_20alpha, 0, 920, 0, 1, room_height, 0, c_white, 1);
	for (var i = 0; i < 3; i++)
		draw_sprite_ext(spr_blackTile_20alpha, 0, 960, 0, 1, room_height, 0, c_white, 1);
	for (var i = 0; i < 1; i++)
		draw_sprite_ext(spr_blackTile_20alpha, 0, 1000, 0, 1, room_height, 0, c_white, 1);
}
