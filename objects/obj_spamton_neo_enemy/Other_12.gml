if (global.inv < 0)
{
	remdamage = damage;
	_temptarget = target;
	for (ti = 0; ti < 3; ti += 1)
	{
		global.inv = -1;
		if (global.hp[global.char[ti]] > (global.maxhp[global.char[ti]] * 0.5))
			damage = floor(global.hp[global.char[ti]] / 5);
		else if (global.hp[global.char[ti]] >= (global.maxhp[global.char[ti]] * 0.15))
			damage = floor(global.hp[global.char[ti]] / 10);
		else if (global.hp[global.char[ti]] < (global.maxhp[global.char[ti]] * 0.15))
			damage = floor(global.hp[global.char[ti]] / 20);
		target = ti;
		if (global.hp[global.char[ti]] > 0 && global.char[ti] != 0)
			scr_damage_sneo_final_attack();
	}
	global.inv = global.invc * 40;
	target = _temptarget;
}
