function scr_actinfo(arg0)
{
	actcost = -1;
	acttype = 0;
	actspell = 0;
	actor = obj_debug_gui;
	actname = " ";
	switch (arg0)
	{
		case 0:
			actcost = -1;
			acttype = 0;
			actspell = 0;
			actor = obj_debug_gui;
			actname = " ";
			break;
		case 1:
			actcost = -1;
			acttype = 0;
			actspell = 0;
			actor = obj_debug_gui;
			actname = scr_84_get_lang_string("scr_actinfo_slash_scr_actinfo_gml_21_0");
			break;
		case 2:
			actcost = -1;
			acttype = 1;
			actspell = 2;
			actor = obj_chapter_continue;
			actname = scr_84_get_lang_string("scr_actinfo_slash_scr_actinfo_gml_28_0");
			break;
	}
}
