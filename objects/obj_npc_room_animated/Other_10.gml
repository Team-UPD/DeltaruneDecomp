global.msc = 0;
global.typer = 5;
if (global.darkzone == 1)
	global.typer = 6;
global.fc = 0;
global.fe = 0;
global.interact = 1;
global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_8_0");
if (room == room_dark1)
{
	global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_12_0");
	global.msg[1] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_13_0");
	global.msg[2] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_14_0") + scr_get_input_name(6) + scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_14_1");
	global.writersnd[0] = snd_item;
	global.writersnd[8] = snd_great_shine;
	if (global.flag[10] == 1)
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_20_0");
	with (obj_npc_room_animated)
		visible = 0;
	global.flag[10] = 1;
}
if (room == room_town_mid)
{
	if (sprite_index == spr_npc_icemascot2)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_31_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_32_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_33_0");
		global.msg[3] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_34_0");
		global.msg[4] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_35_0");
		global.msg[5] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_36_0");
		global.msg[6] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_37_0");
		global.msg[7] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_38_0");
		if (talked >= 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_42_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_43_0");
			global.msg[2] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_44_0");
		}
	}
	if (sprite_index == spr_npc_icemascot_fake)
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_51_0");
	if (sprite_index == spr_npc_icemascot1)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_56_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_57_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_58_0");
		global.msg[3] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_59_0");
		global.msg[4] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_60_0");
		with (obj_town_event)
			con = 20;
	}
}
if (room == room_diner)
{
	global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_67_0");
	global.msg[1] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_68_0");
	global.msg[2] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_69_0");
	if (talked >= 1)
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_72_0");
}
if (room == room_cc_clover)
	global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_78_0");
if (room == room_cc_6f)
{
	global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_83_0");
	global.msg[1] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_84_0");
}
if (room == room_cc_throneroom)
{
	global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_89_0");
	global.msg[1] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_90_0");
}
if (room == room_field_maze)
{
	global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_95_0");
	if (scr_havechar(2))
	{
		global.fc = 1;
		global.typer = 30;
		global.fe = 1;
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_101_0");
	}
}
if (room == room_forest_savepoint_relax)
{
	if (y >= 200)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_109_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_110_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_111_0");
		if (talked >= 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_114_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_115_0");
			global.msg[2] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_116_0");
		}
		if (global.plot >= 90)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_121_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_122_0");
		}
	}
	else
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_128_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_129_0");
		scr_susface(2, 2);
		global.msg[3] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_131_0");
		global.msg[4] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_132_0");
		scr_noface(5);
		global.msg[6] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_134_0");
		if (talked >= 1)
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_137_0");
		if (global.plot >= 90)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_141_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_animated_slash_Other_10_gml_142_0");
		}
	}
}
myinteract = 3;
mydialoguer = instance_create(0, 0, obj_dialoguer);
talked += 1;
