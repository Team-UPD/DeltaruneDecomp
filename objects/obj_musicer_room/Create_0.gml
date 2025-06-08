mysong = "na";
if (room == room_dw_city_savepoint)
{
	if (global.plot < 100)
	{
		if (scr_sideb_get_phase() > 1)
			instance_destroy();
		else
			mysong = "cyberhouse.ogg";
	}
}
if (room == room_dw_city_spamton_house || room == room_dw_city_spamton_shop_exterior || room == room_dw_city_intro || room == room_dw_city_split)
	mysong = "alley_ambience.ogg";
if (mysong != "na" && !snd_is_playing(global.currentsong[1]))
{
	global.currentsong[0] = snd_init(mysong);
	global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.8, 0.97);
}
