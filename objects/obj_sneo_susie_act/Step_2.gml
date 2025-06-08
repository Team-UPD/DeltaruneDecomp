if (turnsleft < 1)
	instance_destroy();
if (instance_exists(obj_heart))
{
	if (init == 0)
	{
		init = 1;
		x = obj_heart.x - 30;
		y = obj_heart.y;
	}
	depth = obj_heart.depth + 1;
	x = obj_heart.x + 10;
	y = obj_heart.y + 10;
	if (instance_exists(obj_sneo_fakeheart))
	{
		x = -9999;
		y = -9999;
	}
}
axe_timer++;
if (axe_timer > 8 && visible == true)
{
	axe_timer = 0;
	instance_create(x, y, obj_sneo_tiny_susie_axe);
}
if (!instance_exists(obj_heart))
	visible = false;
if (instance_exists(obj_heart))
{
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
