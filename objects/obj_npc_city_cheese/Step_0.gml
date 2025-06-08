if (con == 1)
{
	con = 2;
	alarm[0] = 30;
	scr_speaker("noelle");
	msgsetloc(0, "\\EE* KRIS!!!!!!!!!!!!!&!!!!!!!!!!!!/%", "obj_npc_city_cheese_slash_Step_0_gml_9_0");
	d_make();
}
if (con == 3 && !d_ex())
{
	con = -1;
	global.interact = 0;
}
