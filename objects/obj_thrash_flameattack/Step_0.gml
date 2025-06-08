if (!shotfired)
	siner += ((1 - abs(cos((btimer / 14) * pi))) * initialspeed);
siner++;
attackangle = sin(siner / 8) * 28 * flip;
thrash.headangle = attackangle;
if (btimer >= 14 && abs(attackangle) < 26)
{
	xx = thrash.headx + scr_orbitx(0, 0, -40, -4, attackangle);
	yy = thrash.heady + scr_orbity(0, 0, -40, -4, attackangle);
	d = scr_bullet_create(xx, yy, obj_thrash_flames);
	d.direction = attackangle + 180;
	d.speed = 4;
	d.updateimageangle = 1;
	d.grazepoints = grazepoints;
	d.lifetime = 70;
	shotfired = 1;
	shotcount++;
	if (shotcount == (difficulty ? 6 : 4))
	{
		btimer = 0;
		shotcount = 0;
	}
	else
	{
		btimer = 12;
	}
}
else
{
	btimer++;
}
