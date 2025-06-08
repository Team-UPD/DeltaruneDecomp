if (global.flag[337] == 2)
{
	if (con == -1 && obj_mainchara.x > 465)
	{
		con = 2;
		global.interact = 1;
	}
	if (con == 2)
	{
		con = 3;
		alarm[0] = 30;
		scr_speaker("no_name");
		msgsetloc(0, "* (You heard Alvin mumbling to himself as you walked away.)/", "obj_ch2_town_graveyard_slash_Step_0_gml_18_0");
		msgnextloc("* ..^1. were you proud of me^1, father...?/", "obj_ch2_town_graveyard_slash_Step_0_gml_19_0");
		msgnextloc("* And..^1. is it right for this hammer to.../%", "obj_ch2_town_graveyard_slash_Step_0_gml_20_0");
		d_make();
	}
	if (con == 4 && !d_ex())
	{
		con = 0;
		global.interact = 0;
		global.facing = 0;
		global.flag[337] = 3;
	}
}
