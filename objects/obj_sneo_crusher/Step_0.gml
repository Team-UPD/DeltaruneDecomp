if (init == 0)
{
	if (crushedObj > 0)
		maxspeed = (crushedObj == 2) ? 2 : 3;
	init = 1;
	if (new_movement == 0)
	{
		if (difficulty != 2)
			friction = (crushedObj == 2) ? -2.5 : -0.35;
		if (difficulty == 2)
			friction = (crushedObj == 2) ? -2.5 : -0.1;
		if (difficulty == 5)
			friction = (crushedObj == 2) ? -2.5 : -0.1;
	}
	if (crushedObj != 1)
		offsetCap = (crushedObj == 2) ? 15 : 0;
	if (crushedObj == 2)
		hp = 1;
	if (difficulty == 4)
	{
		gun1 = instance_create(x - 15, y - obj_spamton_neo_enemy.crusher_turret_distance, obj_crusher_gun);
		gun1.depth = depth - 1;
		gun2 = instance_create(x - 15, y + obj_spamton_neo_enemy.crusher_turret_distance, obj_crusher_gun);
		gun2.depth = depth - 1;
		createdguns = 1;
	}
}
if (crushedObj == 1)
	offsetCap = max(0, (hp - 1) * 15);
if (new_movement == 1)
{
	hspeed -= haccel;
	if (vbounce == 1)
	{
		if (y > bottomy)
		{
			y = bottomy - 1;
			vspeed = -abs(vspeed);
		}
		if (y < topy)
		{
			y = topy + 1;
			vspeed = abs(vspeed);
		}
	}
}
if (x >= (room_width + 100) || x <= -100 || y >= (room_height + 100) || y <= -100)
{
	instance_destroy();
	if (creatednewalls == 1)
		creatednewalls = 0;
}
if (new_movement == 0)
{
	x += pushback;
	if (pushback > 0)
		pushback--;
	if (pushback == 8)
	{
		depth = startdepth;
		image_blend = c_white;
	}
	if (speed > maxspeed)
	{
		speed = maxspeed;
		friction = 0;
	}
}
if (destroying)
{
	if (difficulty != 3 && difficulty != 5)
	{
		destroying += 15;
		speed = 0;
	}
	if (difficulty == 3 && destroying < 45)
		destroying += 15;
	if (difficulty == 5 && destroying < 45)
		destroying += 15;
	if (destroying >= 200)
	{
		if (creatednewalls == 1)
			creatednewalls = 0;
		instance_destroy();
	}
	exit;
}
if (crushedObj == 2 && offset <= offsetCap)
{
	crushtimer++;
	if (crushtimer == 20)
		offsetCap -= 7;
	if (crushtimer > 20)
	{
		active = 0;
		destroying = 15;
		event_user(1);
	}
}
if (offset <= offsetCap && new_movement == 0)
{
	if (speed == 0)
		speed = 0.1;
	if (difficulty != 2 && difficulty != 5 && difficulty != 6)
	{
		if (updown)
		{
			var ynext = y + slidedir;
			if (ynext > (obj_growtangle.y + 60) || ynext < (obj_growtangle.y - 60))
				slidedir *= -1;
			y += slidedir;
		}
	}
	if (difficulty == 2 || difficulty == 5)
	{
		siner += 0.5;
		y = obj_growtangle.y + (sin(siner / 6) * 50);
	}
}
if (instance_exists(obj_heart) && (x - 30) < obj_heart.x)
	exit;
if (destroying < 1)
{
	for (var i = 0; i < instance_number(obj_yheart_shot); i += 1)
	{
		enemy[i] = instance_find(obj_yheart_shot, i);
		if (enemy[i].x > (x - 22))
		{
			with (enemy[i])
				event_user(0);
		}
	}
}
