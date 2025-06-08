if (!(room == room_dw_city_poppup && global.flag[915] == 6 && global.flag[916] == 0 && global.entrance == 24))
{
	defaultsong = "cybercity.ogg";
	altsong = "cybercity_alt.ogg";
	if (scr_sideb_get_phase() == 2)
	{
		mysong = altsong;
		songspeed = 1.2;
	}
	else
	{
		mysong = defaultsong;
		songspeed = 0.97;
	}
	if (!snd_is_playing(global.currentsong[1]))
	{
		global.currentsong[0] = snd_init(mysong);
		global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.8, songspeed);
	}
}
update = 0;
updatesong = 0;
timer = 0;
if (global.flag[915] == 3 && global.flag[916] == 0)
{
	snd_free_all();
	instance_destroy();
}
