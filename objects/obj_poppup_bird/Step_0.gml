if (init == 0)
{
	if (targetplayer)
	{
		xx += (obj_heart.x + 8);
		yy += (obj_heart.y + 8);
		xx = clamp(xx, obj_growtangle.x - (obj_growtangle.sprite_width / 2), (obj_growtangle.sprite_width / 2) + obj_growtangle.x);
		yy = clamp(yy, obj_growtangle.y - (obj_growtangle.sprite_height / 2), (obj_growtangle.sprite_height / 2) + obj_growtangle.y);
	}
	else
	{
		xx += obj_growtangle.x;
		yy += obj_growtangle.y;
	}
	direction = point_direction(x, y, xx, yy);
	if (targetplayer == 2)
		direction += random_range(-10, 10);
	if (x > xx)
		image_xscale = -1;
	if (abs(y - yy) > 40)
	{
		if (y > yy)
			image_speed *= 2;
		else
			image_speed = image_speed / 2;
	}
	init = 1;
	startdirection = direction;
}
if (timer == 0)
{
	topSpeed = speed;
	speed = 0;
}
if (slow)
	direction = startdirection + (sin(timer / 3) * 5);
if (timer >= (60 / slow))
{
	image_alpha -= 0.1;
	if (image_alpha == 0)
		instance_destroy();
}
else if (image_alpha < 1)
{
	image_alpha += 0.1;
}
if (speed < topSpeed)
	speed += (topSpeed / 4);
timer++;
