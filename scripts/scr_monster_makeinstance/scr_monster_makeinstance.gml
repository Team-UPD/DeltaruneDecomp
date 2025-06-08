function scr_monster_makeinstance(arg0)
{
	global.monster[arg0] = 1;
	with (global.monsterinstance[arg0])
		instance_destroy();
	global.monsterinstance[arg0] = instance_create(global.monstermakex[arg0], global.monstermakey[arg0], global.monsterinstancetype[arg0]);
	global.monsterinstance[arg0].myself = arg0;
	with (global.monsterinstance[arg0])
		event_user(12);
	with (global.monsterinstance[arg0])
		event_user(15);
}
