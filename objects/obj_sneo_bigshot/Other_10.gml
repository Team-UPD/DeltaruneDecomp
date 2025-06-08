if (playerhit)
{
	if (timer > 0)
		exit;
	timer = 1;
	destroyable = 0;
	attackisdone = 1;
	depth -= 40;
	hspeed = 0;
	if (obj_sneo_lastattack.skip_2nd_part_hp > 0)
	{
	}
	obj_sneo_lastattack.endattack = 3;
	xx = x;
	yy = y;
}
else
{
}
