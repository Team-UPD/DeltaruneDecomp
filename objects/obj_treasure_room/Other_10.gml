with (obj_darkcontroller)
	charcon = 0;
global.msc = 0;
global.typer = 5;
if (global.darkzone == 1)
	global.typer = 6;
global.fc = 0;
global.fe = 0;
global.interact = 1;
image_index = 1;
global.msg[0] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_14_0");
if (global.flag[itemflag] == 1)
{
	global.msg[0] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_18_0");
	if (room == room_field_maze)
		global.msg[0] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_19_0");
	if (room == room_forest_dancers1 || room == room_cc_4f)
	{
		if (scr_havechar(3) && extratext == 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_24_0");
			scr_ralface(1, 8);
			global.msg[2] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_26_0");
		}
		if (scr_havechar(2) && scr_havechar(3) && extratext == 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_31_0");
			scr_ralface(1, 8);
			global.msg[2] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_33_0");
			scr_susface(3, 7);
			global.msg[4] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_35_0");
		}
	}
	if (room == room_forest_area3A)
		global.msg[0] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_40_0");
}
else
{
	snd_play(snd_locker);
	itemname = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_48_0");
	itemtypename = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_49_0");
	if (itemtype == "armor")
	{
		scr_armorinfo(t_itemid);
		itemname = armornametemp;
		itemtypename = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_54_0");
		scr_armorget(t_itemid);
	}
	if (itemtype == "weapon")
	{
		scr_weaponinfo(t_itemid);
		itemname = weaponnametemp;
		itemtypename = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_61_0");
		scr_weaponget(t_itemid);
	}
	if (itemtype == "item")
	{
		scr_iteminfo(t_itemid);
		itemname = itemnameb;
		itemtypename = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_68_0");
		scr_itemget(t_itemid);
	}
	if (itemtype == "key")
	{
		scr_keyiteminfo(t_itemid);
		itemname = tempkeyitemname;
		itemtypename = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_75_0");
		scr_keyitemget(t_itemid);
	}
	if (itemtype == "gold")
	{
		noroom = 0;
		global.gold += t_itemid;
		itemtypename = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_82_0");
		itemname = string(t_itemid) + scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_83_0");
	}
	global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_87_0"), itemname);
	if (itemtype == "gold")
		global.msg[0] += "%";
	if (noroom == 0)
	{
		global.msg[1] = scr_84_get_subst_string(scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_99_0"), itemname, itemtypename);
		if (instance_exists(obj_hathyfightevent) && global.plot <= 40)
		{
			global.msg[1] = scr_84_get_subst_string(scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_103_0"), itemname, itemtypename);
			scr_ralface(2, 0);
			global.msg[3] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_105_0");
			global.msg[4] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_106_0");
			global.msg[5] = scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_107_0");
			with (obj_hathyfightevent)
				equipcon = 1;
		}
		global.flag[itemflag] = 1;
		with (obj_event_manager)
			trigger_event((0 << 0), (23 << 0), (939 << 0));
	}
	else
	{
		global.msg[1] = scr_84_get_subst_string(scr_84_get_lang_string("obj_treasure_room_slash_Other_10_gml_115_0"), itemtypename);
		close = 1;
	}
}
myinteract = 3;
mydialoguer = instance_create(0, 0, obj_dialoguer);
talked += 1;
