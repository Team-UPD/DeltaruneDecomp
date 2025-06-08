if (init == 0)
{
	startcolor = image_blend;
	init = 1;
	angle_offset = (startcolor == c_orange) ? random_range(-15, 15) : random_range(-10, 10);
	if (platter_spawn)
	{
		type = 1;
		direction = 270;
		image_alpha = 1;
		target_speed = speed;
		speed = 1;
		platterspawn = false;
		if (fixed_angle)
		{
			var targetdir = point_direction(x, y, obj_heart.x + 10, obj_heart.y + 10);
			var centerdir = point_direction(x, y, obj_growtangle.x, obj_growtangle.y);
			var centerdir2 = scr_rotatetowards_unclamped(targetdir, centerdir, random_range(15, 30));
			targetdir = scr_rotatetowards_unclamped(targetdir, centerdir, -random_range(15, 30));
			if (image_xscale > 0)
				targetdir = max(targetdir, 280);
			else
				targetdir = min(targetdir, 260);
			target_angle = scr_rotatetowards_unclamped(targetdir, centerdir, random_range(15, 30));
		}
	}
	else
	{
		type = 2;
		direction = point_direction(xstart, ystart, obj_heart.x + 10, obj_heart.y + 10) + random_range(-5, 5);
	}
}
if (speed < target_speed)
{
	spawntimer++;
	if (startcolor == c_orange)
		speed = scr_movetowards(speed, target_speed, 0.2);
	else
		speed = scr_movetowards(speed, target_speed, 0.25);
	if (fixed_angle)
	{
		direction = lerp(270, target_angle, (speed - 1) / (target_speed - 1));
	}
	else
	{
		target_angle = point_direction(x, y, obj_heart.x + 10, obj_heart.y + 10) + angle_offset;
		direction = scr_rotatetowards(direction, target_angle, 15);
	}
	if (spawntimer == 6)
		depth -= 11;
}
if (type == 2)
{
	if (x > xstart)
		image_xscale = 1;
	else
		image_xscale = -1;
}
