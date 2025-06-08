if (!init)
{
	image_index = difficulty;
	if (difficulty == 1)
		openingoffset = 180;
	openingsize = 135 - (difficulty * 45);
	if (movementstyle == 1)
	{
		opening = 0;
		openingLerp = 0;
		lastOpening = irandom(3) * 90;
		if (difficulty == 1)
			lastOpening += 45;
		target_speed *= 1;
	}
	init = 1;
}
if (x >= (room_width + 100) || x <= -100 || y >= (room_height + 100) || y <= -100)
	instance_destroy();
if (hitfreeze)
{
	hitfreeze = 0;
	exit;
}
if (movementstyle == 0)
{
	opening += angle_speed;
}
else
{
	openingLerp += abs(angle_speed);
	if (openingLerp >= 90)
	{
		openingLerp -= 90;
		lastOpening += (90 * sign(target_speed));
	}
	opening = (scr_ease_inout(openingLerp / 90, 5) * 90 * sign(target_speed)) + lastOpening;
}
image_angle = opening + openingoffset;
if (!hitfreeze && angle_speed != target_speed)
	angle_speed = scr_movetowards(angle_speed, target_speed, 2);
if (hit)
{
	hit = false;
	image_blend = c_white;
}
