if (irandom(2) == 0)
{
	targetx = obj_heart.x;
	targety = obj_heart.y;
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
else
{
	targetAngle = round(targetAngle / 15) * 15;
	if ((targetAngle % 90) == 0)
		targetAngle += choose(-15, 15);
}
targetAngle %= 360;
if (flip)
	targetAngle += 360;
else
	targetAngle -= 540;
