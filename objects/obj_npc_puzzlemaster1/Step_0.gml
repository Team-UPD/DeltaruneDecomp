if (myinteract == 3)
{
	if (global.flag[20] == 0)
	{
		sprite_index = spr_npc_puzzlepiece;
		image_speed = 0.2;
	}
	if (global.flag[20] == 1)
	{
		sprite_index = spr_npc_puzzlepiece_shock1;
		image_speed = 0.25;
	}
	if (global.flag[20] == 2)
	{
		sprite_index = spr_npc_puzzlepiece_shock2;
		image_speed = 0.334;
	}
}
if (con == 5 && !d_ex())
{
	with (pwall)
		instance_destroy();
	hspeed = -8;
	con = 6;
	alarm[4] = 30;
}
if (con == 7)
{
	global.facing = 0;
	global.interact = 0;
	con = 8;
	global.flag[215] = 1;
	instance_destroy();
}
if (myinteract == 3 && con == 0)
{
	if (instance_exists(mydialoguer) == false)
	{
		global.interact = 0;
		myinteract = 0;
		with (obj_mainchara)
			onebuffer = 5;
	}
}
if (lecturecon == 0)
{
	if (instance_exists(obj_mainchara))
	{
		if (obj_mainchara.y <= 270 && global.interact == 0)
		{
			global.interact = 1;
			lecturecon = 1;
			global.fc = 2;
			global.fe = 1;
			global.typer = 31;
			global.msg[0] = scr_84_get_lang_string("obj_npc_puzzlemaster1_slash_Step_0_gml_60_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_puzzlemaster1_slash_Step_0_gml_61_0");
			global.msg[2] = scr_84_get_lang_string("obj_npc_puzzlemaster1_slash_Step_0_gml_62_0");
			scr_susface(3, 0);
			global.msg[4] = scr_84_get_lang_string("obj_npc_puzzlemaster1_slash_Step_0_gml_64_0");
			scr_ralface(5, 6);
			global.msg[6] = scr_84_get_lang_string("obj_npc_puzzlemaster1_slash_Step_0_gml_66_0");
			global.msg[7] = scr_84_get_lang_string("obj_npc_puzzlemaster1_slash_Step_0_gml_67_0");
			global.msg[8] = scr_84_get_lang_string("obj_npc_puzzlemaster1_slash_Step_0_gml_68_0");
			scr_susface(9, 2);
			global.msg[10] = scr_84_get_lang_string("obj_npc_puzzlemaster1_slash_Step_0_gml_70_0");
			scr_ralface(11, 8);
			global.msg[12] = scr_84_get_lang_string("obj_npc_puzzlemaster1_slash_Step_0_gml_72_0");
			global.msg[13] = scr_84_get_lang_string("obj_npc_puzzlemaster1_slash_Step_0_gml_73_0");
			d_make();
		}
	}
}
if (lecturecon == 1)
{
	if (!d_ex())
	{
		lecturecon = 10;
		global.interact = 0;
		if (global.plot < 42)
			global.plot = 42;
	}
}
