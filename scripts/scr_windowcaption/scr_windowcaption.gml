function scr_windowcaption(arg0)
{
	if (global.tempflag[10] == 1)
		window_set_caption(scr_84_get_lang_string("scr_windowcaption_slash_scr_windowcaption_gml_1_0"));
	else
		window_set_caption(arg0);
}
