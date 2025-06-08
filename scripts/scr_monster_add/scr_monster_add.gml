function scr_monster_add(arg0, arg1)
{
	__returnid = -1;
	for (__mopenslot = 0; __mopenslot < 3; __mopenslot++)
	{
		if (global.monster[__mopenslot] == 0)
		{
			global.monstertype[__mopenslot] = arg0;
			global.monsterinstancetype[__mopenslot] = arg1;
			scr_monster_statreset(__mopenslot);
			scr_monster_makeinstance(__mopenslot);
			__returnid = __mopenslot;
			break;
		}
	}
	return __returnid;
}
