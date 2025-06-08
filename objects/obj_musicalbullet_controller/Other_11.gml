var a = choose(0, 1);
if (forcedir == 1)
	a = 1;
if (forcedir == -1)
	a = 0;
if (a == 0)
{
	with (instance_nearest(x - 200, y, obj_musicenemy_boombox))
	{
		angleoffset = random(25);
		makebullet = 2;
	}
}
if (a == 1)
{
	with (instance_nearest(x + 200, y, obj_musicenemy_boombox))
	{
		angleoffset = random(25) * -1;
		makebullet = 2;
	}
}
