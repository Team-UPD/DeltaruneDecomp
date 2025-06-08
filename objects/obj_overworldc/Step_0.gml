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
				if (global.litem[global.menucoord[1]] == 9)
				{
					dontthrow = 1;
					dontthrowtype = 1;
				}
				if (global.litem[global.menucoord[1]] == 11)
				{
					dontthrow = 1;
					dontthrowtype = 2;
				}
				if (dontthrow == 0)
				{
					i = round(random(30));
					if (i == 0)
						global.msg[0] = stringsetsubloc("* You bid a quiet farewell to the ~1.", global.litemname[global.menucoord[1]], "obj_overworldc_slash_Step_0_gml_34_0_b");
					if (i == 1)
						global.msg[0] = stringsetsubloc("* You put the ~1 on the ground and gave it a little pat.", global.litemname[global.menucoord[1]], "obj_overworldc_slash_Step_0_gml_34_0");
					if (i == 2)
						global.msg[0] = stringsetsubloc("* You threw the ~1 on the ground like the piece of trash it is.", global.litemname[global.menucoord[1]], "obj_overworldc_slash_Step_0_gml_36_0");
					if (i == 3)
						global.msg[0] = stringsetsubloc("* You abandoned the ~1.", global.litemname[global.menucoord[1]], "obj_overworldc_slash_Step_0_gml_38_0_b");
					if (i > 3)
						global.msg[0] = stringsetsubloc("* The ~1 was thrown away.", global.litemname[global.menucoord[1]], "obj_overworldc_slash_Step_0_gml_38_0");
					global.msg[0] += "/%";
					if (global.litem[global.menucoord[1]] == 8)
					{
						global.msg[0] = stringsetloc("* What Egg?/%", "obj_overworldc_slash_Step_0_gml_42_0");
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
					else if (dontthrowtype == 1)
					{
						msgsetloc(0, "* (You fumbled and caught them^1. You can't throw these away!)/%", "obj_overworldc_slash_Step_0_gml_61_0");
						script_execute(scr_writetext, 0, "x", 0, 0);
					}
					else if (dontthrowtype == 2)
					{
						msgsetloc(0, "* (You didn't quite understand why...)/", "obj_overworldc_slash_Step_0_gml_66_0");
						msgnextloc("* (But, the thought of discarding it felt very wrong.)/%", "obj_overworldc_slash_Step_0_gml_67_0");
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
if (scr_debug())
{
}
threebuffer--;
