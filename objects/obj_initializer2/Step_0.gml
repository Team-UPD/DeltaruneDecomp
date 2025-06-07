if (global.savedata_async_id >= 0)
	exit;
if (global.is_console)
{
	if (!variable_global_exists("init_prefetch"))
	{
		global.init_prefetch = true;
		scr_prefetch_textures();
	}
}
if (audio_group_is_loaded(1))
{
	roomchoice = PLACE_CONTACT;
	menu_go = 0;
	if (ossafe_file_exists("filech1_0"))
		menu_go = 1;
	if (ossafe_file_exists("filech1_1"))
		menu_go = 1;
	if (ossafe_file_exists("filech1_2"))
		menu_go = 1;
	if (ossafe_file_exists("filech1_3"))
		menu_go = 1;
	if (ossafe_file_exists("dr.ini"))
		menu_go = 1;
	if (ossafe_file_exists("filech1_3"))
		menu_go = 2;
	if (ossafe_file_exists("filech1_4"))
		menu_go = 2;
	if (ossafe_file_exists("filech1_5"))
		menu_go = 2;
	if (menu_go == 0)
	{
		if (os_type == os_ps5)
		{
			with (obj_event_manager)
				trigger_event((2 << 0), (0 << 0));
		}
		roomchoice = PLACE_CONTACT;
	}
	else if (menu_go == 1)
	{
		roomchoice = PLACE_MENU;
	}
	else if (menu_go == 2)
	{
		scr_windowcaption(scr_84_get_lang_string("obj_initializer2_slash_Step_0_gml_22_0"));
		global.tempflag[10] = 1;
		roomchoice = room_legend;
		global.plot = 0;
	}
	room_goto(roomchoice);
}
