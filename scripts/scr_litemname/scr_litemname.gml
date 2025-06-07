function scr_litemname()
{
	for (i = 0; i < 8; i += 1)
	{
		itemid = global.litem[i];
		if (itemid == 0)
			global.litemname[i] = " ";
		if (itemid == 1)
			global.litemname[i] = scr_84_get_lang_string("scr_litemname_slash_scr_litemname_gml_6_0");
		if (itemid == 2)
			global.litemname[i] = scr_84_get_lang_string("scr_litemname_slash_scr_litemname_gml_7_0");
		if (itemid == 3)
			global.litemname[i] = scr_84_get_lang_string("scr_litemname_slash_scr_litemname_gml_8_0");
		if (itemid == 4)
			global.litemname[i] = scr_84_get_lang_string("scr_litemname_slash_scr_litemname_gml_9_0");
		if (itemid == 5)
			global.litemname[i] = scr_84_get_lang_string("scr_litemname_slash_scr_litemname_gml_10_0");
		if (itemid == 6)
			global.litemname[i] = scr_84_get_lang_string("scr_litemname_slash_scr_litemname_gml_11_0");
		if (itemid == 7)
			global.litemname[i] = scr_84_get_lang_string("scr_litemname_slash_scr_litemname_gml_12_0");
		if (itemid == 8)
			global.litemname[i] = scr_84_get_lang_string("scr_litemname_slash_scr_litemname_gml_13_0");
		if (itemid == 11)
			global.litemname[i] = scr_84_get_lang_string("scr_litemname_slash_scr_litemname_gml_14_0");
	}
}
