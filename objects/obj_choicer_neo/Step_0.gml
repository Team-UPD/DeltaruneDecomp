global.flag[33] += 1;
if (canchoose == 1)
{
	if (mychoice >= 0)
	{
		if (button1_p())
			event_user(0);
	}
	if (choiced == 0)
	{
		if (left_h())
			mychoice = 0;
		if (choicetotal >= 1)
		{
			if (right_h())
				mychoice = 1;
		}
		if (choicetotal >= 2)
		{
			if (up_h())
				mychoice = 2;
		}
		if (choicetotal >= 3)
		{
			if (down_h())
				mychoice = 3;
		}
	}
}
if (dar == 1)
	scr_84_set_draw_font("main");
else
	scr_84_set_draw_font("mainbig");
heartposx[0] = xx + (30 * dar);
heartposy[0] = yy + ((34 + d_add) * dar);
textposx[0] = heartposx[0] + (16 * dar);
textposy[0] = yy + ((13 + d_add) * dar);
if (choicetotal >= 1)
{
	var str1width = string_width(string_hash_to_newline(global.choicemsg[1]));
	heartposx[1] = (xx + (320 * dar)) - (30 * dar) - str1width - (14 * dar);
	heartposy[1] = yy + ((34 + d_add) * dar);
	textposx[1] = heartposx[1] + (16 * dar);
	textposy[1] = yy + ((13 + d_add) * dar);
}
if (choicetotal >= 2)
{
	var msg0right = heartposx[0] + (16 * dar) + string_width(string_hash_to_newline(global.choicemsg[0]));
	var msg1left = heartposx[1];
	var msg2width = string_width(string_hash_to_newline(global.choicemsg[2])) + (16 * dar);
	if (choicetotal == 3)
	{
		var msg3width = string_width(string_hash_to_newline(global.choicemsg[3])) + (16 * dar);
		if (msg3width > msg2width)
			msg2width = msg3width;
	}
	heartposx[2] = (msg0right + ((msg1left - msg0right) / 2)) - (msg2width / 2);
	heartposy[2] = yy + ((16 + d_add) * dar);
	textposx[2] = heartposx[2] + (16 * dar);
	textposy[2] = yy + ((13 + d_add) * dar);
}
if (choicetotal >= 3)
{
	heartposx[3] = heartposx[2];
	heartposy[3] = yy + ((60 + d_add) * dar);
	textposx[3] = heartposx[3] + (16 * dar);
	textposy[3] = yy + ((56 + d_add) * dar);
}
if (mychoice >= 0)
{
	hx = heartposx[mychoice];
	hy = heartposy[mychoice];
}
