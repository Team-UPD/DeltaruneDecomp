myinteract = 3;
global.msc = 0;
global.typer = 30;
global.fc = 1;
global.fe = 0;
global.interact = 1;
if (room == room_castle_town)
{
	global.fe = 1;
	global.msg[0] = stringsetloc("* Oh^1, you're not dead^2.&* Sweet./", "obj_npc_susiedark_slash_Other_10_gml_13_0");
	global.msg[1] = stringsetloc("\\E2* Got any idea what the heck this place is?/", "obj_npc_susiedark_slash_Other_10_gml_14_0");
	global.msg[2] = stringsetloc("\\E0* ... me neither./", "obj_npc_susiedark_slash_Other_10_gml_15_0");
	global.msg[3] = stringsetloc("* Wonder if there's anyone in that building up there...?/%", "obj_npc_susiedark_slash_Other_10_gml_16_0");
	if (talked >= 1)
	{
		global.msg[0] = stringsetloc("* Maybe this place is an abandoned theme park?/", "obj_npc_susiedark_slash_Other_10_gml_20_0");
		global.msg[1] = stringsetloc("\\E0* Wait^1, where are the rides^1, then...?/", "obj_npc_susiedark_slash_Other_10_gml_21_0");
		global.msg[2] = stringsetloc("\\E2* Maybe they abandoned it 'cause there weren't any./%", "obj_npc_susiedark_slash_Other_10_gml_22_0");
	}
}
talked += 1;
mydialoguer = instance_create(0, 0, obj_dialoguer);
