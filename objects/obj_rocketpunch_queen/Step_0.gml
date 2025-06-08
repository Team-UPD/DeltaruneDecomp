if (con == 0)
{
	rocketpunch = instance_create(x - 8, y - 132, obj_rocketpunch_fist);
	rocketpunch.hspeed = hspeed;
	rocketpunch.vspeed = vspeed;
	rocketpunch.friction = friction;
	con = 1;
	timer = 0;
}
if (con == 1)
{
	timer++;
	if (timer == 30)
	{
		rocketpunch.con = 1;
		rocketpunch.friction = 0.5;
		vspeed = -8;
		friction = -4;
		con = 2;
	}
}
