btimer++;
if (btimer < 0)
	thrash.headangle = lerp(240, 360, scr_ease_inout(btimer / ((difficulty == 1) ? -10 : -13), 3));
else
	thrash.headangle = lerp(240, 600, scr_ease_out(btimer / (difficulty ? 14 : 18), 5));
if (btimer == 2)
{
	d = scr_bullet_create(thrash.headx, thrash.heady, obj_thrash_sword_bullet);
	d.speed = 8;
	d.gravity_direction = 0;
	d.gravity = 0.1;
	d.grazepoints = grazepoints;
	d.direction = random_range(160, 200);
}
if (btimer >= (difficulty ? 11 : 14))
{
	thrash.headangle = 240;
	btimer = 0;
}
