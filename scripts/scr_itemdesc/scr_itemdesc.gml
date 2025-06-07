function scr_itemdesc()
{
	for (i = 0; i < 12; i += 1)
	{
		itemid = global.item[i];
		switch (itemid)
		{
			case 0:
				itemdesc[i] = "---";
				break;
			case 1:
				itemdesc[i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_11_0");
				break;
			case 2:
				itemdesc[i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_14_0");
				break;
			case 3:
				itemdesc[i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_17_0");
				break;
			case 4:
				itemdesc[i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_20_0");
				break;
			case 5:
				itemdesc[i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_23_0");
				break;
			case 6:
				itemdesc[i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_26_0");
				break;
			case 7:
				itemdesc[i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_29_0");
				break;
			case 8:
				itemdesc[i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_32_0");
				break;
			case 9:
				itemdesc[i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_35_0");
				break;
			case 10:
				itemdesc[i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_38_0");
				break;
			case 11:
				itemdesc[i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_41_0");
				break;
			case 12:
				itemdesc[i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_44_0");
				break;
			case 13:
				itemdesc[i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_47_0");
				break;
			case 14:
				itemdesc[i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_50_0");
				break;
			case 15:
				itemdesc[i] = scr_84_get_lang_string("scr_itemdesc_slash_scr_itemdesc_gml_53_0");
				break;
		}
	}
}
