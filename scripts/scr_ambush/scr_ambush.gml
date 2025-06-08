function scr_ambush()
{
	with (obj_writer)
		instance_destroy();
	with (obj_face)
		instance_destroy();
	global.charturn = 3;
	global.mnfight = 1;
	global.myfight = -1;
	with (obj_monsterparent)
		ambushed = 1;
}
