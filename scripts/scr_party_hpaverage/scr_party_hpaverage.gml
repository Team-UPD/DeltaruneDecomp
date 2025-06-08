function scr_party_hpaverage()
{
	var _totalhp = 0;
	var _totalmaxhp = 0;
	var _members = 0;
	for (var _hpi = 0; _hpi < 3; _hpi++)
	{
		if (global.char[_hpi] > 0)
		{
			_members++;
			_totalhp += global.hp[global.char[_hpi]];
			_totalmaxhp += global.maxhp[global.char[_hpi]];
		}
	}
	if (_totalhp > 0)
		return floor(_totalhp / _totalmaxhp);
	else
		return 0;
}
