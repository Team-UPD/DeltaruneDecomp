if (con == 0)
{
	if (obj_mainchara.y < 70)
	{
		con = 1;
		global.interact = 1;
	}
}
if (con == 1)
{
	con = 2;
	scr_speaker("susie");
	msgsetloc(0, "\\E1* (Hey Kris^1, shouldn't we go check on Lancer?)/", "obj_ch2_room_town_south_slash_Step_0_gml_17_0");
	msgnextloc("\\E0* (He should be back in the school closet^1, right...?)/%", "obj_ch2_room_town_south_slash_Step_0_gml_18_0");
	var d = d_make();
	d.side = 1;
}
if (con == 2 && !d_ex())
{
	con = 99;
	global.interact = 0;
	global.flag[444] = 1;
}
