if (up_p())
	choice_index = ((choice_index - 1) < 0) ? (array_length_1d(choice) - 1) : (choice_index - 1);
if (down_p())
	choice_index = ((choice_index + 1) > (array_length_1d(choice) - 1)) ? 0 : (choice_index + 1);
if (button1_p())
{
	if (choice_index == 0)
	{
		var menu_go = 0;
		var roomchoice = room_intro_ch2;
		var CH = string(global.chapter);
		if (ossafe_file_exists("filech" + CH + "_0"))
			menu_go = 1;
		if (ossafe_file_exists("filech" + CH + "_1"))
			menu_go = 1;
		if (ossafe_file_exists("filech" + CH + "_2"))
			menu_go = 1;
		if (ossafe_file_exists("filech" + CH + "_3"))
			menu_go = 1;
		if (ossafe_file_exists("dr.ini"))
			menu_go = 1;
		if (ossafe_file_exists("filech" + CH + "_3"))
			menu_go = 2;
		if (ossafe_file_exists("filech" + CH + "_4"))
			menu_go = 2;
		if (ossafe_file_exists("filech" + CH + "_5"))
			menu_go = 2;
		if (menu_go == 0 || menu_go == 1)
			roomchoice = room_intro_ch2;
		if (menu_go == 2)
		{
			scr_windowcaption("DELTARUNE");
			global.tempflag[10] = 1;
			roomchoice = room_legend;
			global.plot = 0;
		}
		global.darkzone = 0;
		room_goto(roomchoice);
	}
	else if (choice_index == 1)
	{
		room_goto_next();
	}
	else if (choice_index == 2)
	{
		scr_load();
	}
	else if (choice_index == 3)
	{
		if (ossafe_file_exists("filech1_3"))
		{
			global.filechoice = 3;
			scr_load_chapter1();
			global.filechoice = 0;
			global.darkzone = 0;
			room_goto(room_krisroom);
		}
		else
		{
			snd_play(snd_error);
		}
	}
}
