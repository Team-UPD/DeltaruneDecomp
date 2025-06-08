btimer++;
headangle = (obj_rouxls_enemy.y - 40) / 1.75;
if (btimer <= (difficulty ? 8 : 15))
{
	if (btimer == (difficulty ? 8 : 15))
	{
		var xx = thrash.headx - scr_orbitx(0, 0, 45, 0, headangle);
		var yy = thrash.heady - scr_orbity(0, 0, 45, 0, headangle);
		snd_play_x(snd_spearappear, 1, 1.2);
		d = scr_bullet_create(xx, yy, obj_thrash_laserbullet);
		d.grazepoints = grazepoints;
		d.direction = 0;
		d.attackdirection = lastattack;
	}
}
if (btimer >= (difficulty ? 13 : 25))
{
	btimer = 0;
	var nextattack = irandom(1);
	if (nextattack == lastattack)
		nextattack = 2;
	lastangle = attackangle;
	attackangle = (nextattack * 90) + 90;
	lastattack = nextattack;
}
thrash.headangle = headangle;
