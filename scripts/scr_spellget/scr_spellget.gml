function scr_spellget(arg0, arg1)
{
	var __spellj = 0;
	var __openslot = -1;
	var __haveit = 0;
	for (__spellj = 0; __spellj < 12; __spellj++)
	{
		if (global.spell[arg0][__spellj] == arg1)
			__haveit = 1;
		if (__openslot == -1)
		{
			if (global.spell[arg0][__spellj] == 0)
				__openslot = __spellj;
		}
	}
	if (__openslot >= 0 && __haveit == 0)
		global.spell[arg0][__openslot] = arg1;
}
