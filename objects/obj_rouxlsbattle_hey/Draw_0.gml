trackpos = audio_sound_get_track_position(global.batmusic[1]);
if (global.myfight == 0)
{
	if (trackpos >= 58.335 && trackpos <= 58.375)
	{
		if (con == 0)
		{
			timer = 0;
			con = 1;
		}
	}
}
if (con == 1)
{
	draw_sprite(spr_rouxls_bubble_hey, lang, obj_rouxls_enemy.x - 10, global.monstery[obj_rouxls_enemy.myself]);
	timer++;
	if (timer == 12)
		con = 0;
}
if (global.flag[54] == 0)
	instance_destroy();
