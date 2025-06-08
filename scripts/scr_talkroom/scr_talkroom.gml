function scr_talkroom()
{
	global.typer = 6;
	global.fc = 0;
	global.fe = 0;
	global.msg[0] = stringsetloc("* Your voice echoes aimlessly./%", "scr_talkroom_slash_scr_talkroom_gml_4_0");
	talkdg = instance_create(0, 0, obj_dialoguer);
	atalk += 1;
}
