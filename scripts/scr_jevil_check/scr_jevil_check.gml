function scr_jevil_check()
{
	var item_knife = false;
	var item_tail = false;
	var chapter = 1;
	var result = scr_get_ura_value(chapter, global.filechoice);
	if (result == 0)
		exit;
	if (result == 3)
	{
		item_knife = true;
		item_tail = true;
	}
	else
	{
		item_knife = result == 1;
		item_tail = result == 2;
	}
	if (item_knife)
		global.tempflag[36] = 2;
	else if (item_tail)
		global.tempflag[36] = 1;
}
