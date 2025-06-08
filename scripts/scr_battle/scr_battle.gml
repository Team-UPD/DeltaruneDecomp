function scr_battle(arg0, arg1, arg2, arg3, arg4)
{
	global.specialbattle = arg1;
	global.encounterno = arg0;
	if (global.flag[9] != 2)
	{
		global.flag[9] = 1;
		global.batmusic[0] = snd_init("battle.ogg");
	}
	instance_create(0, 0, obj_battleback);
	instance_create(0, 0, obj_encounterbasic);
	__enemymarker[0] = arg2;
	__enemymarker[1] = arg3;
	__enemymarker[2] = arg4;
	for (__ien = 0; __ien < 3; __ien++)
	{
		if (global.monstertype[__ien] != 0)
		{
			if (!i_ex(__enemymarker[__ien]))
			{
				__enemymarker[__ien] = scr_dark_marker(global.monstermakex[__ien] + 300, global.monstermakey[__ien], object_get_sprite(global.monsterinstancetype[__ien]));
				__enemymarker[__ien].depth = -__ien;
			}
			__enemymarker[__ien].__ien = __ien;
			with (__enemymarker[__ien])
			{
				scr_move_to_point_over_time(global.monstermakex[__ien], global.monstermakey[__ien], 20);
				__doom = instance_create(x, y, obj_doom);
				__doom.target = id;
				__doom.alarm[0] = 25;
			}
		}
	}
}
