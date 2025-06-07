function scr_damage_all()
{
	if (global.inv < 0)
	{
		scr_damage_cache();
		remdamage = damage;
		_temptarget = target;
		for (ti = 0; ti < 3; ti += 1)
		{
			global.inv = -1;
			damage = remdamage;
			target = ti;
			if (global.hp[global.char[ti]] > 0 && global.char[ti] != 0)
				scr_damage();
		}
		global.inv = global.invc * 40;
		target = _temptarget;
		scr_damage_check();
	}
}
