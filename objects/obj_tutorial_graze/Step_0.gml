xx = camerax();
yy = cameray();
if (con == 0)
{
	growtangle = instance_create(xx + 320, (yy + 240) - 80, obj_growtangle);
	timer = 0;
	puzboy = instance_create(xx + 320, ((yy + 240) - 80) + 32 + 20, obj_tutorial_puzboy);
	con++;
	xvar = xx + 320 + random_range(-30, 30);
}
if (con == 1)
{
	timer++;
	if (timer > 4 && (obj_tutorial_puzboy.x < 340 && obj_tutorial_puzboy.x > 300))
	{
		xvar = xx + 320;
		b = instance_create(xvar, yy + 80, obj_tutorial_bullet);
		b.direction = point_direction(b.x, b.y, puzboy.x, puzboy.y);
		b.speed = 5;
		b2 = instance_create(xvar, yy + 80, obj_tutorial_bullet);
		b2.direction = b.direction + 33;
		b2.speed = 5;
		b3 = instance_create(xvar, yy + 80, obj_tutorial_bullet);
		b3.direction = b.direction - 33;
		b3.speed = 5;
		b.image_angle = b.direction;
		b2.image_angle = b2.direction;
		b3.image_angle = b3.direction;
		b.depth = growtangle.depth - 5;
		b2.depth = growtangle.depth - 5;
		b3.depth = growtangle.depth - 5;
		timer = 0;
	}
}
if (!d_ex())
{
	with (puzboy)
		fade = true;
	if (i_ex(obj_tutorial_bullet))
	{
		with (obj_tutorial_bullet)
			fade = true;
	}
	growtangle.growcon = 3;
	instance_destroy();
}
