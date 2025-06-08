if (shottype == 0)
{
	targetx = obj_heart.x + 8;
	targety = obj_heart.y + 8;
}
else
{
	targetx = obj_growtangle.x + random_range(-50, 50);
	targety = obj_growtangle.y + random_range(-50, 50);
}
targetAngle = point_direction(x, y - 24, targetx, targety);
if (instance_exists(obj_queen_buffercontroller))
{
	targetAngle = round(targetAngle / 45) * 45;
	if ((targetAngle % 90) == 0)
		targetAngle += choose(-45, 45);
}
else if (shottype == 1)
{
	targetAngle = round(targetAngle / 15) * 15;
	if ((targetAngle % 90) == 0)
		targetAngle += choose(-15, 15);
}
targetAngle %= 360;
if (firsttime)
{
	if (flip)
		targetAngle += 360;
	else
		targetAngle -= 540;
}
else if (!flip)
{
	targetAngle -= 180;
	targetAngle %= 360;
	if (targetAngle > 180)
		targetAngle -= 360;
}
