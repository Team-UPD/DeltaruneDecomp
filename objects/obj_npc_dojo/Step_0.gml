scr_depth();
if (myinteract == 3)
{
	if (global.flag[20] == 0)
	{
		sprite_index = spr_npc_puzzlepiece;
		image_speed = 0.2;
	}
	if (global.flag[20] == 1)
	{
		sprite_index = spr_npc_puzzlepiece_shock1;
		image_speed = 0.25;
	}
	if (global.flag[20] == 2)
	{
		sprite_index = spr_npc_puzzlepiece_shock2;
		image_speed = 0.334;
	}
	if (i_ex(mydialoguer) == false)
	{
		if (!instance_exists(obj_fusionmenu))
			global.interact = 0;
		myinteract = 0;
		with (obj_mainchara)
			onebuffer = 5;
	}
}
if (con == 10)
{
	con = 11;
	alarm[4] = 40;
}
if (con == 12 && global.fighting == 0)
{
	con = 13;
	alarm[4] = 15;
}
if (con == 14)
{
	scr_speaker("noone");
	if (global.flag[36] == 0)
	{
		if (global.flag[dojoFlag] == 0)
		{
			if (dojoFlag == 810 || dojoFlag == 811 || dojoFlag == 812 || dojoFlag == 813)
			{
				msgsetloc(0, "* An amazing battle!/", "obj_npc_dojo_slash_Step_0_gml_45_0");
				msgnextloc("* As promised^1, here is your reward!/", "obj_npc_dojo_slash_Step_0_gml_46_0");
				scr_itemget_anytype(dojoPrizeValue, dojoPrizeType);
				if (noroom != 0)
				{
					msgnextloc("* Boss!^1 Your inventory is full!!/", "obj_npc_dojo_slash_Step_0_gml_56_0");
					msgnextloc("* You'll just have to try again^1, boss!/%", "obj_npc_dojo_slash_Step_0_gml_65_0");
					global.flag[dojoFlag] = 0;
				}
				else
				{
					msgnextsubloc("* (You received ~1!)/%", dojoPrizeName, "obj_npc_dojo_slash_Step_0_gml_51_0");
					global.flag[dojoFlag] = 2;
				}
			}
			if (dojoFlag == 814)
			{
				if (global.flag[50] == 1)
				{
					msgsetloc(0, "* Hey^1! That's not how you \\cYSPARE\\cW someone!/", "obj_npc_dojo_slash_Step_0_gml_77_0");
					msgnextloc("* ..^1. but I guess a win is a win./", "obj_npc_dojo_slash_Step_0_gml_78_0");
				}
				else
				{
					msgsetloc(0, "* An amazing battle!/", "obj_npc_dojo_slash_Step_0_gml_45_0");
					msgnextloc("* As promised^1, here is your reward!/", "obj_npc_dojo_slash_Step_0_gml_46_0");
				}
				msgnextloc("* You received Joe's Life Savings ($1)!/%", "obj_npc_dojo_slash_Step_0_gml_85_0");
				scr_itemget_anytype(dojoPrizeValue, dojoPrizeType);
				global.flag[dojoFlag] = 2;
			}
		}
		else
		{
			if (dojoFlag == 810 || dojoFlag == 811 || dojoFlag == 812 || dojoFlag == 813)
			{
				msgsetloc(0, "* An amazing battle!/", "obj_npc_dojo_slash_Step_0_gml_45_0");
				msgnextloc("* But you already won that prize^1, so we don't have another!/%", "obj_npc_dojo_slash_Step_0_gml_99_0");
			}
			if (dojoFlag == 814)
			{
				msgsetloc(0, "* An amazing battle!/", "obj_npc_dojo_slash_Step_0_gml_45_0");
				msgnextloc("* ...I don't have any more to give. You've already taken everything I have./%", "obj_npc_dojo_slash_Step_0_gml_105_0");
			}
		}
	}
	else
	{
		if (dojoFlag == 810)
			msgsetloc(0, "* Boss^1! For bullets aimed right at you^1, try moving \\cYone direction bit by bit\\cW...!/%", "obj_npc_dojo_slash_Step_0_gml_115_0");
		if (dojoFlag == 812)
			msgsetloc(0, "* Boss^1! Try to remember your ABCs...!/%", "obj_npc_dojo_slash_Step_0_gml_120_0");
		if (dojoFlag == 814 || dojoFlag == 811 || dojoFlag == 813)
			msgsetloc(0, "* You beefed it! Better luck next time^1, boss!/%", "obj_npc_dojo_slash_Step_0_gml_61_0");
	}
	d_make();
	con = 15;
}
if (con == 15 && !d_ex())
{
	scr_healall(999);
	global.flag[35] = 0;
	global.flag[36] = 0;
	global.flag[37] = 0;
	global.flag[38] = 0;
	global.flag[39] = 0;
	global.flag[60] = 0;
	global.flag[61] = 0;
	con = 0;
	global.interact = 0;
	global.facing = 0;
}
