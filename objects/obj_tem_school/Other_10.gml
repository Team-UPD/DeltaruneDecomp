global.msc = 0;
global.typer = 5;
global.fc = 0;
global.fe = 0;
global.interact = 1;
image_speed = 0.2;
global.msg[0] = scr_84_get_lang_string("obj_tem_school_slash_Other_10_gml_8_0");
if (egcon == 0 && global.plot < 3)
	egcon = 1;
if (talked >= 1)
{
	global.msg[0] = scr_84_get_lang_string("obj_tem_school_slash_Other_10_gml_13_0");
	if (global.facing == 3)
	{
		image_speed = 0;
		facing = 0;
		dfacing = 0;
		global.msg[0] = scr_84_get_lang_string("obj_tem_school_slash_Other_10_gml_20_0");
		global.msg[1] = scr_84_get_lang_string("obj_tem_school_slash_Other_10_gml_21_0");
	}
}
if (global.plot == 3)
{
	if (egcon == 0)
	{
		global.msg[0] = scr_84_get_lang_string("obj_tem_school_slash_Other_10_gml_29_0");
		global.msg[1] = scr_84_get_lang_string("obj_tem_school_slash_Other_10_gml_30_0");
	}
	if (egcon == 3)
	{
		global.msg[0] = scr_84_get_lang_string("obj_tem_school_slash_Other_10_gml_34_0");
		if (global.facing == 3)
		{
			image_speed = 0;
			facing = 0;
			dfacing = 0;
			global.msg[0] = scr_84_get_lang_string("obj_tem_school_slash_Other_10_gml_41_0");
		}
	}
}
myinteract = 3;
mydialoguer = instance_create(0, 0, obj_dialoguer);
if (global.darkzone == 1)
	image_speed = 0.1;
talked += 1;
