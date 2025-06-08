if (!instance_exists(obj_heart))
{
	instance_destroy();
	exit;
}
if (init == 0)
{
	init = 1;
	b1 = instance_create(x, y, obj_pipis_bullet);
	b1.place = 60 + random(15);
	b1.parent = id;
	b1.damage = damage;
	b1.target = target;
	b2 = instance_create(x, y, obj_pipis_bullet);
	b2.place = 120 + random(15);
	b2.parent = id;
	b2.damage = damage;
	b2.target = target;
	b3 = instance_create(x, y, obj_pipis_bullet);
	b3.place = 180 + random(15);
	b3.parent = id;
	b3.damage = damage;
	b3.target = target;
	b4 = instance_create(x, y, obj_pipis_bullet);
	b4.place = 240 + random(15);
	b4.parent = id;
	b4.damage = damage;
	b4.target = target;
	b5 = instance_create(x, y, obj_pipis_bullet);
	b5.place = 300 + random(15);
	b5.parent = id;
	b5.damage = damage;
	b5.target = target;
	b6 = instance_create(x, y, obj_pipis_bullet);
	b6.place = 360 + random(15);
	b6.parent = id;
	b6.damage = damage;
	b6.target = target;
}
if (con == 0)
{
	timer++;
	if (timer == 15)
	{
		con = 1;
		timer = 0;
	}
}
if (con == 1 || (con > 1 && con < 6))
{
	move_towards_point(obj_heart.x, obj_heart.y, 13);
	con++;
	if (distance_to_object(obj_heart) < 30)
		con = 6;
}
if (x < (camerax() - 50))
	instance_destroy();
