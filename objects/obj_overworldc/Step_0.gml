hasitems = global.litem[0] != 0;
if (global.interact == 5)
{
	currentmenu = global.menuno;
	if (global.menuno < 6)
		currentspot = global.menucoord[global.menuno];
	if (button1_p())
	{
		if (global.menuno == 5)
		{
			if (global.menucoord[5] == 0)
			{
				global.menuno = 9;
				script_execute(scr_litemuseb, global.menucoord[1], global.litem[global.menucoord[1]]);
			}
			if (global.menucoord[5] == 1)
			{
				global.menuno = 9;
				script_execute(scr_litemdesc, global.litem[global.menucoord[1]]);
				script_execute(scr_writetext, 0, "x", 0, 0);
			}
			if (global.menucoord[5] == 2)
			{
				dontthrow = 0;
				dontthrowtype = 0;
				global.menuno = 9;
				if (global.litem[global.menucoord[1]] == 5)
					dontthrow = 1;
				if (global.litem[global.menucoord[1]] == 11)
				{
					dontthrow = 1;
					dontthrowtype = 2;
				}
				if (dontthrow == 0)
				{
					i = round(random(30));
					if (i == 0)
						global.msg[0] = scr_84_get_lang_string("obj_overworldc_slash_Step_0_gml_32_0") + global.litemname[global.menucoord[1]] + ".";
					if (i == 1)
						global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_overworldc_slash_Step_0_gml_33_0"), global.litemname[global.menucoord[1]]);
					if (i == 2)
						global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_overworldc_slash_Step_0_gml_35_0"), global.litemname[global.menucoord[1]]);
					if (i == 3)
						global.msg[0] = scr_84_get_lang_string("obj_overworldc_slash_Step_0_gml_36_0") + global.litemname[global.menucoord[1]] + ".";
					if (i > 3)
						global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_overworldc_slash_Step_0_gml_37_0"), global.litemname[global.menucoord[1]]);
					global.msg[0] += scr_84_get_lang_string("obj_overworldc_slash_Step_0_gml_38_0");
					if (global.litem[global.menucoord[1]] == 8)
					{
						global.msg[0] = scr_84_get_lang_string("obj_overworldc_slash_Step_0_gml_41_0");
						if (global.flag[263] == 0)
							global.flag[263] = 1;
					}
					script_execute(scr_writetext, 0, "x", 0, 0);
					script_execute(scr_litemshift, global.menucoord[1], 0);
				}
				if (dontthrow == 1)
				{
					if (dontthrowtype == 0)
					{
						global.msc = 10;
						scr_text(global.msc);
						script_execute(scr_writetext, 10, "x", 0, 0);
					}
					else if (dontthrowtype == 2)
					{
						global.msg[0] = scr_84_get_lang_string("obj_overworldc_slash_Step_0_gml_42_0");
						global.msg[1] = scr_84_get_lang_string("obj_overworldc_slash_Step_0_gml_43_0");
						script_execute(scr_writetext, 0, "x", 0, 0);
					}
				}
			}
		}
		if (global.menuno == 3)
		{
			global.menuno = 9;
			script_execute(scr_litemuseb, global.menucoord[3], global.phone[global.menucoord[3]]);
		}
		if (global.menuno == 1)
		{
			global.menuno = 5;
			global.menucoord[5] = 0;
		}
		if (global.menuno == 0)
			global.menuno += (global.menucoord[0] + 1);
		if (global.menuno == 3)
		{
			script_execute(scr_phonename);
			global.menucoord[3] = 0;
		}
		if (global.menuno == 1)
		{
			if (global.litem[0] != 0)
			{
				global.menucoord[1] = 0;
				script_execute(scr_litemname);
			}
			else
			{
				global.menuno = 0;
			}
		}
	}
	if (up_p())
	{
		if (global.menuno == 0)
		{
			if (global.menucoord[0] != 0)
				global.menucoord[0] -= 1;
		}
		if (global.menuno == 1)
		{
			if (global.menucoord[1] != 0)
				global.menucoord[1] -= 1;
		}
		if (global.menuno == 3)
		{
			if (global.menucoord[3] != 0)
				global.menucoord[3] -= 1;
		}
	}
	if (down_p())
	{
		if (global.menuno == 0)
		{
			if (global.menucoord[0] != 2)
				global.menucoord[0] += 1;
		}
		if (global.menuno == 1)
		{
			if (global.menucoord[1] != 7)
			{
				if (global.litem[global.menucoord[1] + 1] != 0)
					global.menucoord[1] += 1;
			}
		}
		if (global.menuno == 3)
		{
			if (global.menucoord[3] != 7)
			{
				if (global.phone[global.menucoord[3] + 1] != 0)
					global.menucoord[3] += 1;
			}
		}
	}
	if (button2_p() && buffer >= 0)
	{
		if (global.menuno == 0)
		{
			global.menuno = -1;
			global.interact = 0;
		}
		else if (global.menuno <= 3)
		{
			global.menuno = 0;
		}
		if (global.menuno == 5)
			global.menuno = 1;
	}
	if (right_p())
	{
		if (global.menuno == 5)
		{
			if (global.menucoord[5] != 2)
				global.menucoord[5] += 1;
		}
	}
	if (left_p())
	{
		if (global.menuno == 5)
		{
			if (global.menucoord[5] != 0)
				global.menucoord[5] -= 1;
		}
	}
	if (button3_p() && threebuffer <= 0)
	{
		if (global.menuno == 0)
		{
			global.menuno = -1;
			global.interact = 0;
			with (obj_mainchara)
				threebuffer = 2;
		}
	}
	if (currentmenu < global.menuno && global.menuno != 9)
	{
		selnoise = 1;
	}
	else if (global.menuno >= 0 && global.menuno < 6)
	{
		if (currentspot != global.menucoord[global.menuno])
			movenoise = 1;
	}
}
if (global.menuno == 9 && instance_exists(obj_dialoguer) == false)
{
	global.menuno = -1;
	global.interact = 0;
}
if (selnoise == 1)
{
	snd_play(snd_select);
	selnoise = 0;
}
if (movenoise == 1)
{
	snd_play(snd_menumove);
	movenoise = 0;
}
threebuffer--;
