destroyoffscreen = true;
tolerance = 64;
teller = 0;
if (instance_exists(obj_mainchara))
{
	with (obj_mainchara)
	{
		if (press_r)
			other.teller = wspeed;
		else if (press_l)
			other.teller = -wspeed;
		else
			other.teller = 0;
	}
}
move_towards_point(charaHeartX() + (teller * 20), charaHeartY(), 1);
friction = -0.3;
alarm[0] = 300;
image_xscale = 0.2;
image_yscale = 2;
image_angle = direction;
explosiontype = 0;
target = 3;
active = 1;
timer = 0;
damage = 10;
aimtimer = 0;
deathtimer = 0;
