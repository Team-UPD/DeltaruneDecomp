if (con == 1 && global.interact == 0)
{
	if (obj_mainchara.y <= 160)
	{
		global.interact = 1;
		a = 90;
		with (a)
		{
			facing = 0;
			dfacing = 0;
			sprite_index = spr_alphysd;
		}
		exc = instance_create(a.x + 15, a.y - 6, obj_excblcon);
		con = 2;
		alarm[4] = 30;
	}
}
if (con == 3)
{
	with (exc)
		instance_destroy();
	global.typer = 20;
	global.fc = 11;
	global.fe = 3;
	global.msg[0] = scr_84_get_lang_string("obj_alphysalley_event_slash_Step_0_gml_25_0");
	global.msg[1] = scr_84_get_lang_string("obj_alphysalley_event_slash_Step_0_gml_26_0");
	global.msg[2] = scr_84_get_lang_string("obj_alphysalley_event_slash_Step_0_gml_27_0");
	global.msg[3] = scr_84_get_lang_string("obj_alphysalley_event_slash_Step_0_gml_28_0");
	global.msg[4] = scr_84_get_lang_string("obj_alphysalley_event_slash_Step_0_gml_29_0");
	global.msg[5] = scr_84_get_lang_string("obj_alphysalley_event_slash_Step_0_gml_30_0");
	global.msg[6] = scr_84_get_lang_string("obj_alphysalley_event_slash_Step_0_gml_31_0");
	instance_create(0, 0, obj_dialoguer);
	con = 4;
}
if (con == 4 && !d_ex())
{
	global.interact = 0;
	global.flag[269] = 1;
	con = 5;
}
