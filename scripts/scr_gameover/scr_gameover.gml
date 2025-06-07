function scr_gameover()
{
	audio_stop_all();
	snd_play(snd_hurt1);
	if (room != room_forest_fightsusie)
	{
		global.screenshot = sprite_create_from_surface(application_surface, 0, 0, __view_get(e__VW.WView, 0), __view_get(e__VW.HView, 0), 0, 0, 0, 0);
		snd_free_all();
		room_goto(room_gameover);
	}
	else
	{
		global.entrance = 0;
		global.tempflag[9] = 1;
		room_goto(room_forest_savepoint3);
	}
}
