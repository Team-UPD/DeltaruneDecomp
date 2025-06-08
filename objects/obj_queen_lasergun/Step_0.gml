if (!instance_exists(obj_queen_bulletcontroller))
{
	instance_destroy();
	exit;
}
if (init == 0)
{
	if (instance_exists(obj_heart))
	{
		idealangle = point_direction(x, y, obj_heart.x + 10, obj_heart.y + 10);
		aimx = obj_heart.x;
		aimy = obj_heart.y;
	}
	else
	{
		idealangle = 270;
	}
	if (randomshot)
	{
		if (floor(random(3)))
			idealangle += random_range(-20, 20);
	}
	currentangle = idealangle + 360;
	init = 1;
	snd_play(snd_spearappear);
	timer = 0;
	size = 0;
}
inittimer++;
if (inittimer >= inittime)
{
	if (con == 0)
	{
		timer++;
		size = lerp(0, maxsize, timer / aimtime);
		currentangle = lerp(currentangle, idealangle, timer / aimtime);
		if (timer >= aimtime)
		{
			con = 1;
			timer = 0;
		}
	}
	image_angle = currentangle;
	image_xscale = size;
	image_yscale = size;
	if (con == 1)
	{
		timer++;
		if (timer >= waittime)
		{
			snd_play(snd_wallclaw);
			laser = instance_create(x, y, obj_queen_laser);
			laser.image_angle = image_angle;
			laser.direction = image_angle;
			laser.image_yscale = shotsize;
			con = 2;
			timer = 0;
		}
	}
	if (con == 2)
	{
		direction = image_angle;
		speed -= 0.25;
		timer++;
		if (timer >= 10)
			image_alpha -= 0.1;
		if (image_alpha <= 0)
			instance_destroy();
	}
}
