if (instance_exists(obj_MovingPlat_dw_cyber_music_final))
{
	xx = obj_MovingPlat_dw_cyber_music_final.x + 38;
	yy = 152;
	mody = 232;
	rx = (xx - 50 - 38) + 2;
	lx = (((xx + 330) - 38) + 2) - 4;
}
if (active == true)
	timer++;
if (timer == 45)
{
	down = instance_create(xx + 0, yy, obj_beatbullet_simple);
	down = instance_create(xx + 204, yy, obj_beatbullet_simple);
}
if (timer == 60)
{
	snd_stop(global.currentsong[1]);
	if (scr_is_switch_os())
		instance_create(x, y, obj_switchAsyncHelper);
	musLoad = snd_init("cyber_battle_prelude.ogg");
	musSeq = snd_play(musLoad);
	sndinit = 1;
}
if (sndinit == 1)
{
	trackpos = audio_sound_get_track_position(musSeq);
	sndlength = audio_sound_length(musSeq);
	var endme = false;
	safetime++;
	if (safetime > 150)
	{
		if (!audio_is_playing(musSeq))
		{
			debug_message("safety: moving on");
			endme = true;
		}
	}
	if (safetime > 540)
	{
		debug_message("safety quit...");
		endme = true;
	}
	modifier = 0.5333333333333333;
	if (scr_bullbattle_muspos(1.848))
	{
		left = instance_create(lx, mody + 0, obj_beatbullet_simple);
		right = instance_create(rx, mody + 136, obj_beatbullet_simple);
		seq++;
	}
	if (scr_bullbattle_muspos(3.694))
	{
		down = instance_create(xx + 0, yy, obj_beatbullet_simple);
		down = instance_create(xx + 136, yy, obj_beatbullet_simple);
		seq++;
	}
	if (scr_bullbattle_muspos(5.54))
	{
		down = instance_create(xx + 68, yy, obj_beatbullet_simple);
		down = instance_create(xx + 204, yy, obj_beatbullet_simple);
		seq++;
	}
	if (scr_bullbattle_muspos(6.481))
	{
		left = instance_create(lx, mody + 0, obj_beatbullet_simple);
		right = instance_create(rx, mody + 0, obj_beatbullet_simple);
		seq++;
	}
	if (scr_bullbattle_muspos(7.401))
	{
		left = instance_create(lx, mody + 0, obj_beatbullet_simple);
		left = instance_create(lx, mody + 68, obj_beatbullet_simple);
		seq++;
	}
	if (scr_bullbattle_muspos(9.233))
	{
		right = instance_create(rx, mody + 68, obj_beatbullet_simple);
		right = instance_create(rx, mody + 136, obj_beatbullet_simple);
		seq++;
	}
	if (scr_bullbattle_muspos(11.079))
	{
		down = instance_create(xx + 0, yy, obj_beatbullet_simple);
		down = instance_create(xx + 68, yy, obj_beatbullet_simple);
		seq++;
	}
	if (scr_bullbattle_muspos(13.438666666666666))
	{
		left = instance_create(lx, mody + 0, obj_beatbullet_simple);
		left = instance_create(lx, mody + 136, obj_beatbullet_simple);
		right = instance_create(rx, mody + 0, obj_beatbullet_simple);
		right = instance_create(rx, mody + 136, obj_beatbullet_simple);
		down = instance_create(xx + 0, yy, obj_beatbullet_simple);
		down = instance_create(xx + 204, yy, obj_beatbullet_simple);
		seq++;
	}
	if (trackpos >= 16.290000000000003 || endme)
	{
		con = 2;
		snd_stop(musSeq);
		snd_free(musLoad);
		with (obj_switchAsyncHelper)
			instance_destroy();
		sndinit = 2;
		active = 0;
	}
}
