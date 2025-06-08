function scr_spamton_heal(arg0)
{
	with (obj_dmgwriter)
	{
		if (delaytimer >= 1)
			killactive = 1;
	}
	for (i = 0; i < 3; i++)
	{
		if (global.char[i] == 0)
			continue;
		var _hltarget = global.char[i];
		var _curhp = global.hp[_hltarget];
		if (arg0 == 0)
			_healpower = global.maxhp[_hltarget] / 2;
		else if (arg0 == 1)
			_healpower = global.maxhp[_hltarget] / 5;
		else if (arg0 == 2)
			_healpower = 1;
		else
			_healpower = 0;
		var _healpower = ceil(_healpower);
		scr_heal(i, _healpower);
		with (global.charinstance[i])
		{
			ha = instance_create(x, y, obj_healanim);
			ha.target = id;
			dmgwr = scr_dmgwriter_selfchar();
			with (dmgwr)
			{
				delay = 8;
				type = 3;
				damage = _healpower;
			}
			if (global.hp[global.char[myself]] >= global.maxhp[global.char[myself]])
			{
				with (dmgwr)
					specialmessage = 3;
			}
			tu += 1;
		}
	}
	for (i = 0; i < 3; i++)
	{
		with (global.charinstance[i])
			tu--;
	}
}
