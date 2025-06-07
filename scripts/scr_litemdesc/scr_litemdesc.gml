function scr_litemdesc(arg0)
{
	global.msg[0] = scr_84_get_lang_string("scr_litemdesc_slash_scr_litemdesc_gml_1_0");
	switch (arg0)
	{
		case 0:
			global.msg[0] = scr_84_get_lang_string("scr_litemdesc_slash_scr_litemdesc_gml_5_0");
			break;
		case 1:
			global.msg[0] = scr_84_get_lang_string("scr_litemdesc_slash_scr_litemdesc_gml_8_0");
			break;
		case 2:
			global.msg[0] = scr_84_get_lang_string("scr_litemdesc_slash_scr_litemdesc_gml_11_0");
			break;
		case 3:
			global.msg[0] = scr_84_get_lang_string("scr_litemdesc_slash_scr_litemdesc_gml_14_0");
			break;
		case 4:
			global.msg[0] = scr_84_get_lang_string("scr_litemdesc_slash_scr_litemdesc_gml_17_0");
			global.msg[1] = scr_84_get_lang_string("scr_litemdesc_slash_scr_litemdesc_gml_18_0");
			break;
		case 5:
			global.msg[0] = scr_84_get_lang_string("scr_litemdesc_slash_scr_litemdesc_gml_21_0");
			if (scr_itemcheck(1))
			{
				global.msg[0] = scr_84_get_lang_string("scr_litemdesc_slash_scr_litemdesc_gml_25_0");
				global.msg[1] = scr_84_get_lang_string("scr_litemdesc_slash_scr_litemdesc_gml_26_0");
			}
			break;
		case 6:
			global.msg[0] = scr_84_get_lang_string("scr_litemdesc_slash_scr_litemdesc_gml_30_0");
			break;
		case 7:
			global.msg[0] = scr_84_get_lang_string("scr_litemdesc_slash_scr_litemdesc_gml_33_0");
			break;
		case 8:
			global.msg[0] = scr_84_get_lang_string("scr_litemdesc_slash_scr_litemdesc_gml_36_0");
			break;
		case 11:
			global.msg[0] = scr_84_get_lang_string("scr_litemdesc_slash_scr_litemdesc_gml_37_0");
			global.msg[1] = scr_84_get_lang_string("scr_litemdesc_slash_scr_litemdesc_gml_38_0");
			break;
	}
}
