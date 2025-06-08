if (place_meeting(x, y, obj_mouseKiller))
{
	visible = false;
	con = 1;
	if (x < 260)
		fall = instance_create(x + 38, y + 8, obj_holemouse_descend);
	else
		fall = instance_create(x + 2, y + 10, obj_holemouse_descend);
	fall.target = target;
	instance_destroy();
}
