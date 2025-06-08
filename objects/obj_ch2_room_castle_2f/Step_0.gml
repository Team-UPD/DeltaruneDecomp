if ((obj_mainchara.x > x && global.plot == 13) && global.interact == 0)
{
	global.plot = 14;
	global.interact = 1;
	global.facing = 1;
	con = 1;
}
if (con == 1)
{
	con = 3;
	global.facing = 3;
	with (obj_caterpillarchara)
	{
		if (name == "susie")
		{
			fun = 1;
			_remsprite = sprite_index;
			sprite_index = lsprite;
			image_index = 0;
		}
	}
	scr_speaker("ralsei");
	msgsetloc(0, "\\E1* I..^1. have a surprise for you two...!/", "obj_ch2_room_castle_2f_slash_Step_0_gml_26_0");
	msgnextloc("\\E2* ..^1. I made rooms for you in the castle!/", "obj_ch2_room_castle_2f_slash_Step_0_gml_27_0");
	scr_anyface_next("susie", 6);
	msgnextloc("\\E6* ..^1. Rooms?/", "obj_ch2_room_castle_2f_slash_Step_0_gml_29_0");
	scr_anyface_next("ralsei", 2);
	msgnextloc("\\E2* So you can stay here whenever you want!/", "obj_ch2_room_castle_2f_slash_Step_0_gml_31_0");
	msgnextloc("\\E1* Ummm^1, I'd be happy if this place.../", "obj_ch2_room_castle_2f_slash_Step_0_gml_32_0");
	msgnextloc("\\E2* Could be like a second home to you./", "obj_ch2_room_castle_2f_slash_Step_0_gml_33_0");
	msgnextloc("\\E0* A place that you can go.../", "obj_ch2_room_castle_2f_slash_Step_0_gml_34_0");
	msgnextloc("\\EI* No matter what's happening outside./", "obj_ch2_room_castle_2f_slash_Step_0_gml_35_0");
	scr_anyface_next("susie", 6);
	msgnextloc("\\E6* .../", "obj_ch2_room_castle_2f_slash_Step_0_gml_37_0");
	msgnextloc("\\EA* Heh^1, well^1, we'll take a look./%", "obj_ch2_room_castle_2f_slash_Step_0_gml_38_0");
	d_make();
}
if ((obj_mainchara.x < x && global.plot == 14) && global.interact == 0)
{
	con = 4;
	global.interact = 1;
	global.facing = 1;
	obj_mainchara.x = x + 4;
	leaveCounter++;
	var sentenceEnd = (leaveCounter == 1) ? "/" : "/%";
	scr_speaker("susie");
	msgsetsubloc(0, "\\E5* Hey^1, lemme look at my freaking room a sec!~1", sentenceEnd, "obj_ch2_room_castle_2f_slash_Step_0_gml_54_0");
	if (leaveCounter == 1)
	{
		msgnextloc("\\EP* Damn^1, all you wanna do is run off and steal cake./", "obj_ch2_room_castle_2f_slash_Step_0_gml_58_0");
		scr_anyface_next("ralsei", 33);
		msgnextloc("\\EX* (..^1. is that projection?)/%", "obj_ch2_room_castle_2f_slash_Step_0_gml_60_0");
	}
	d_make();
}
if ((obj_mainchara.x < x && global.plot == 15 && global.flag[432] == 0) && global.interact == 0)
{
	con = 4;
	global.interact = 1;
	global.flag[432] = 1;
	global.facing = 1;
	scr_speaker("susie");
	msgsetloc(0, "\\EK* So^1, what do we do now?/", "obj_ch2_room_castle_2f_slash_Step_0_gml_75_0");
	scr_anyface_next("ralsei", 2);
	msgnextloc("\\E2* Feel free to explore the town until you're ready to \\cYleave\\c0!/", "obj_ch2_room_castle_2f_slash_Step_0_gml_77_0");
	scr_anyface_next("susie", 2);
	msgnextloc("\\E2* Hah^1! Like we're gonna \\cYleave\\c0 now^1, right^1, Kris?/%", "obj_ch2_room_castle_2f_slash_Step_0_gml_79_0");
	d_make();
}
if (con == 3 || con == 4)
{
	if (!d_ex())
	{
		if (con == 3)
		{
			global.facing = 0;
			with (obj_caterpillarchara)
			{
				if (name == "susie")
				{
					fun = 0;
					sprite_index = _remsprite;
				}
			}
		}
		global.interact = 0;
		con = -1;
	}
}
