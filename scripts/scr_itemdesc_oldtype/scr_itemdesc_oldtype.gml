function scr_itemdesc_oldtype(arg0)
{
	global.msg[0] = scr_84_get_lang_string("scr_itemdesc_oldtype_slash_scr_itemdesc_oldtype_gml_2_0");
	switch (arg0)
	{
		case 0:
			global.msg[0] = scr_84_get_lang_string("scr_itemdesc_oldtype_slash_scr_itemdesc_oldtype_gml_6_0");
			break;
		case 1:
			global.msg[0] = scr_84_get_lang_string("scr_itemdesc_oldtype_slash_scr_itemdesc_oldtype_gml_9_0");
			break;
		case 2:
			global.msg[0] = scr_84_get_lang_string("scr_itemdesc_oldtype_slash_scr_itemdesc_oldtype_gml_12_0");
			break;
	}
}
