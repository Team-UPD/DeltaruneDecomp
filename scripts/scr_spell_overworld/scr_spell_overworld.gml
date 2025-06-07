function scr_spell_overworld(arg0)
{
	w = arg0;
	usable = 0;
	switch (arg0)
	{
		case 0:
			break;
		case 2:
			scr_healitem(global.charselect, 100);
			break;
	}
}
