function scr_84_load_ini()
{
	var CH = string(global.chapter);
	for (i = 0; i < 3; i += 1)
		FILE[i] = 0;
	for (i = 0; i < 3; i += 1)
	{
		FILE[i] = 0;
		NAME[i] = stringsetloc("[EMPTY]", "scr_84_load_ini_slash_scr_84_load_ini_gml_13_0");
		TIME[i] = 0;
		PLACE[i] = "------------";
		LEVEL[i] = 0;
		TIME_STRING[i] = "--:--";
		INITLANG[i] = 0;
	}
	if (ossafe_file_exists("filech" + CH + "_0"))
	{
		FILE[0] = 1;
		NAME[0] = "FILE0";
	}
	if (ossafe_file_exists("filech" + CH + "_1"))
	{
		FILE[1] = 1;
		NAME[1] = "FILE1";
	}
	if (ossafe_file_exists("filech" + CH + "_2"))
	{
		FILE[2] = 1;
		NAME[2] = "FILE2";
	}
	if (ossafe_file_exists("dr.ini"))
	{
		ossafe_ini_open("dr.ini");
		for (i = 0; i < 3; i += 1)
		{
			if (FILE[i] == 1)
			{
				var room_id = ini_read_real(scr_ini_chapter(global.chapter, i), "Room", scr_get_id_by_room_index(room));
				var room_index = scr_get_valid_room(global.chapter, room_id);
				PLACE[i] = scr_roomname(room_index);
				TIME[i] = ini_read_real(scr_ini_chapter(global.chapter, i), "Time", 0);
				NAME[i] = ini_read_string(scr_ini_chapter(global.chapter, i), "Name", "------");
				LEVEL[i] = 1;
				INITLANG[i] = ini_read_real(scr_ini_chapter(global.chapter, i), "InitLang", 0);
				TIME_SECONDS_TOTAL[i] = floor(TIME[i] / 30);
				TIME_MINUTES[i] = floor(TIME_SECONDS_TOTAL[i] / 60);
				TIME_SECONDS[i] = TIME_SECONDS_TOTAL[i] - (TIME_MINUTES[i] * 60);
				TIME_SECONDS_STRING[i] = string(TIME_SECONDS[i]);
				if (TIME_SECONDS[i] == 0)
					TIME_SECONDS_STRING[i] = "00";
				if (TIME_SECONDS[i] < 10 && TIME_SECONDS[i] >= 1)
					TIME_SECONDS_STRING[i] = "0" + string(TIME_SECONDS[i]);
				TIME_STRING[i] = scr_timedisp(TIME[i]);
			}
		}
		ossafe_ini_close();
		ossafe_savedata_save();
	}
}
