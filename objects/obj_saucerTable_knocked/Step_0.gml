if (con == 0)
{
	if (instance_exists(obj_dogtable_controlled))
	{
		if (!is_undefined(obj_dogtable_controlled.vspeed))
		{
			verticalDirection = obj_dogtable_controlled.vspeed;
			spd = abs(obj_dogtable_controlled.vspeed);
		}
		if (!is_undefined(obj_dogtable_controlled.hspeed))
		{
			horizontalDirection = obj_dogtable_controlled.hspeed;
			hsp = obj_dogtable_controlled.hspeed;
		}
	}
	if (verticalDirection == 0)
		verticalDirection = choose(-1, 1);
	if (horizontalDirection == 0)
		horizontalDirection = choose(-1, 1);
	timer = 0;
	con++;
}
if (con == 1)
{
	if (spd == 0)
		spd = random_range(8, 16);
	x += ((spd * sign(horizontalDirection)) + hsp);
	y += (spd * sign(verticalDirection));
	image_angle += (spd * sign(verticalDirection) * -1);
	timer++;
	if (timer > 15)
		image_alpha *= 0.7;
	if (image_alpha < 0.01)
		instance_destroy();
}
scr_depth_alt();
