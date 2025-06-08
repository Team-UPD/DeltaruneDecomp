function scr_damage_calculation(arg0, arg1)
{
	var _tdamage = arg0;
	var _tdef = global.battledf[arg1];
	var _tmaxhp = global.maxhp[global.char[arg1]];
	var _finaldamage = 1;
	var _hpthresholda = _tmaxhp / 5;
	var _hpthresholdb = _tmaxhp / 8;
	for (var _di = 0; _di < _tdef; _di++)
	{
		if (_tdamage > _hpthresholda)
			_tdamage -= 3;
		else if (_tdamage > _hpthresholdb)
			_tdamage -= 2;
		else
			_tdamage -= 1;
	}
	return max(_tdamage, _finaldamage);
}
