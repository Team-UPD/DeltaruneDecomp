if (!i_ex(thrash))
	exit;
if (deathtimer > 0)
{
	deathtimer--;
	if (deathtimer <= 0)
	{
		obj_rouxls_enemy.thrashcon = 7;
		obj_rouxls_enemy.x = obj_rouxls_enemy.remx;
		thrash.a = 0;
		instance_destroy();
	}
}
if (duckmode)
{
	var thrashcon = obj_rouxls_enemy.thrashcon;
	if ((thrashcon == 3 || thrashcon == 5) && thrash.stomp != 0)
		snd_pitch(snd_play(snd_squeaky), (thrash.stomp == 1) ? 1.25 : 1);
}
thrash.stomp = 0;
x = thrash.xx - 30;
y = thrash.yy + (thrash.s * thrash.walkc) + 14;
