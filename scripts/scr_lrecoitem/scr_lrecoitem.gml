function scr_lrecoitem(arg0)
{
	scr_lrecover(arg0);
	global.item[8] = recovered;
	if (maxedout == 1)
		global.item[8] = 9999;
	global.msg[0] += scr_84_get_lang_string("scr_lrecoitem_slash_scr_lrecoitem_gml_11_0");
	if (global.item[8] < 999)
		global.msg[0] += scr_84_get_subst_string(scr_84_get_lang_string("scr_lrecoitem_slash_scr_lrecoitem_gml_14_0"), string(global.item[8]));
	else
		global.msg[0] += scr_84_get_lang_string("scr_lrecoitem_slash_scr_lrecoitem_gml_16_0");
	script_execute(scr_writetext, 0, "x", 0, 0);
}
