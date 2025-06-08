if (hp < 1)
{
	if (active == 1)
		snd_pitch(snd_play(snd_hurt1), 2);
	active = 0;
	image_alpha -= 0.05;
	if (image_alpha < 0.01)
		instance_destroy();
	exit;
}
if (!instance_exists(obj_heart))
	visible = false;
if (instance_exists(obj_heart))
{
	depth = obj_heart.depth - 1;
	x = obj_heart.x + 10;
	y = obj_heart.y + 9;
	if (instance_exists(obj_sneo_fakeheart))
	{
		x = -9999;
		y = -9999;
	}
	if (alarm[0] == 9)
		visible = false;
	else if (alarm[0] == 8)
		visible = false;
	else if (alarm[0] == 5)
		visible = false;
	else if (alarm[0] == 4)
		visible = false;
	else if (alarm[0] == 1)
		visible = false;
	else if (alarm[0] == 0)
		visible = false;
	else
		visible = true;
}
