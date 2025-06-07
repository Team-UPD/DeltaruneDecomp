function scr_talkroom()
{
	global.typer = 6;
	global.fc = 0;
	global.fe = 0;
	global.msg[0] = scr_84_get_lang_string("scr_talkroom_slash_scr_talkroom_gml_4_0");
	talkdg = instance_create(0, 0, obj_dialoguer);
	atalk += 1;
}
