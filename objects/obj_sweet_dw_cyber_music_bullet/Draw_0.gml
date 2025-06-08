image_speed = 0.25;
if (instance_exists(obj_mainchara))
{
	if (obj_mainchara.x >= 200 && move == 0)
	{
		snd_play(snd_rocket);
		snd_play_pitch(snd_rocket, 1.6);
		global.flag[428] = 1;
		move = 1;
		hspeed = 2;
	}
}
sweettimer++;
y = yy - (sin(sweettimer / 8) * 6);
if (move == 0)
{
	x = xx - (sin(sweettimer / 16) * 10);
	draw_sprite_ext(spr_sweet_idle, image_index, x, y, 2, 2, 0, c_white, 1);
	draw_sprite_ext(spr_cutscene_cyber01_dj_table_hover, image_index, x - 54, y + 58, 2, 2, 0, c_white, 1);
}
if (move == 1)
{
	draw_sprite_ext(spr_sweet_dance, image_index, x, y, 2, 2, 0, c_white, 1);
	draw_sprite_ext(spr_cutscene_cyber01_dj_table_side, image_index, x - 54, y + 58, 2, 2, 0, c_white, 1);
	hspeed *= 1.1;
	yy -= 2;
}
if (x > (camerax() + 640 + (sprite_width * 2)))
	instance_destroy();
