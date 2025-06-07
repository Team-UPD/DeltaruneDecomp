if (type == 0)
{
	if (x >= (obj_battlesolid.x + 100))
		hspeed -= 0.5;
	if (x <= (obj_battlesolid.x - 100))
		hspeed += 0.5;
}
if (type == 1)
{
	if (y >= (obj_battlesolid.y + 100))
		vspeed -= 0.5;
	if (y <= (obj_battlesolid.y - 100))
		vspeed += 0.5;
}
siner += 1;
image_angle += anglespeed;
if (image_alpha < 1)
	image_alpha += 0.1;
grazetimer += 1;
if (grazetimer >= 3)
{
	grazetimer = 0;
	grazed = 0;
}
