if (target == 0)
{
	if (global.hp[1] <= (global.maxhp[1] / 2))
		damage = ceil(global.hp[1] / 3);
}
scr_damage();
