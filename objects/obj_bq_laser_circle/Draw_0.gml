if (o_boxingqueen.drawflip == 1)
{
	x = o_boxingqueen.x + 12;
	y = o_boxingqueen.y - 64;
}
else
{
	x = o_boxingqueen.x - 12;
	y = o_boxingqueen.y - 64;
}
if (horizontal == 1)
{
	if (o_boxingqueen.drawflip == 1)
	{
		x = o_boxingqueen.x + 80;
		y = o_boxingqueen.y - 173;
	}
	else
	{
		x = o_boxingqueen.x - 80;
		y = o_boxingqueen.y - 173;
	}
}
if (state == 0)
{
	timer += 5;
	if (horizontal == 1)
		timer += 5;
	if (timer > 79)
		state = 1;
}
if (state == 1)
{
	timer -= 5;
	if (horizontal == 1)
		timer -= 5;
	if (timer < 40)
		state = 0;
}
if (timer >= 30 && !instance_exists(obj_bq_laser))
{
	laser = instance_create(x, y, obj_bq_laser);
	if (horizontal == 1)
		laser.horizontal = 1;
}
circle1_radius = lerp(3, 30, timer / 100);
draw_set_alpha(0.8);
draw_circle_colour(x, y, circle1_radius, c_lime, c_lime, false);
draw_circle_colour(x, y, 5, c_white, c_lime, false);
