function scr_gamestart_chapter_override()
{
	global.plot = 0;
	global.char[0] = 1;
	global.char[1] = 0;
	global.char[2] = 0;
	var ch1_egg_check = scr_keyitemcheck(2);
	if (!ch1_egg_check)
	{
		if (global.flag[263] == 2)
		{
			ch1_egg_check = true;
		}
		else
		{
			scr_litemcheck(8);
			ch1_egg_check = haveit;
		}
	}
	global.flag[911] = ch1_egg_check;
	global.flag[281] = 0;
	scr_litemremove(1);
	scr_litemremove(4);
	scr_litemremove(8);
	global.phone[1] = 0;
	global.phone[2] = 0;
	scr_keyitemremove(2);
	scr_keyitemremove(3);
	scr_keyitemremove(4);
	scr_keyitemremove(5);
	scr_keyitemremove(6);
	scr_keyitemremove(7);
	scr_itemremove(4);
	if (global.chapter == 2)
	{
		global.darkzone = 0;
		global.flag[7] = 0;
		global.flag[9] = 1;
		global.flag[10] = 1;
		global.flag[16] = 0.85;
		global.flag[17] = 0.6;
		global.flag[20] = 0;
		global.flag[21] = 0;
		global.flag[31] = 1;
		global.flag[32] = 0;
		global.flag[34] = 1;
		global.flag[64] = 24;
		global.flag[605] = 1;
		global.flag[606] = 1;
		global.flag[611] = 1;
		global.flag[613] = 1;
		global.flag[614] = 1;
		global.flag[615] = 1;
		global.flag[622] = 1;
		global.flag[623] = 1;
		global.flag[800] = 15;
		global.flag[801] = 5;
		global.flag[802] = 6;
		global.flag[803] = 5;
		global.charweapon[4] = 12;
		global.chararmor1[4] = 14;
		global.chararmor2[4] = 22;
		global.maxhp[1] = 120;
		global.hp[1] = global.maxhp[1];
		global.at[1] = 12;
		global.maxhp[2] = 140;
		global.hp[2] = global.maxhp[2];
		global.at[2] = 16;
		global.mag[2] = 1;
		global.maxhp[3] = 100;
		global.hp[3] = global.maxhp[3];
		global.at[3] = 10;
		global.mag[3] = 9;
		global.hp[4] = 90;
		global.maxhp[4] = 90;
		global.at[4] = 3;
		global.mag[4] = 11;
		global.df[4] = 1;
		if (global.flag[241] >= 6)
		{
			if (scr_keyitemcheck(13) == 0)
				scr_keyitemget(13);
			if (scr_litemcheck(11) == 0)
				scr_litemget(11);
		}
	}
	global.invc = 1;
}
