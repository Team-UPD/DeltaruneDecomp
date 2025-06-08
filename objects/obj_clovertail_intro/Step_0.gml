if (con == 0)
{
	image_xscale += 0.5;
	timer++;
	if (timer == 10)
	{
		tail = instance_create(camerax() + 320, 0, obj_clovertail);
		tail.damage = damage;
		tail.target = target;
		con = 1;
		timer = 0;
	}
}
if (global.turntimer <= 5 && instance_exists(obj_clovertail) && obj_clovertail.con == 1)
	obj_clovertail.con = 2;
if (global.turntimer <= 0 && con == 1)
	con = 2;
if (con == 2)
{
	image_xscale -= 0.5;
	timer++;
	if (timer == 10)
	{
		instance_destroy();
		obj_clubsenemy.notail = 0;
	}
}
