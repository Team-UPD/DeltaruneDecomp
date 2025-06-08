image_index = global.flag[flag];
if (con == 1)
{
	global.interact = 1;
	scr_speaker("no_name");
	if (flag == 374)
		msgsetloc(0, "* (The mice found $20.)&* (You didn't get any.)/%", "obj_dw_mansion_mouseLottery_Chest_slash_Step_0_gml_8_0");
	if (flag == 375)
		msgsetloc(0, "* (The mice found $1.)&* (You didn't get any.)/%", "obj_dw_mansion_mouseLottery_Chest_slash_Step_0_gml_9_0");
	d_make();
	con++;
}
if (con == 2 && !d_ex())
{
	global.interact = 0;
	con++;
}
