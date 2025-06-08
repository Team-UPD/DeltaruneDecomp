var a = choose(0, 1);
if (a == 0)
{
	with (instance_nearest(x - 200, y, obj_musicenemy_boombox))
		makebullet = 3;
}
if (a == 1)
{
	with (instance_nearest(x + 200, y, obj_musicenemy_boombox))
		makebullet = 3;
}
