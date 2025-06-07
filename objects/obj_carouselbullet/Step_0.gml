if (t <= 25)
	image_alpha += 0.04;
if (t == 25)
	active = 1;
if (t == 0)
{
	maxspeed = abs(hspeed);
	hspeed = 0;
}
t += 1;
siner += sinspeed;
sinfactor_0 = sin((siner - 1) / 20);
sinfactor = sin(siner / 20);
sinsign = sinfactor - sinfactor_0;
x = obj_battlesolid.x - (sinfactor * 150);
image_xscale = sinsign * 50;
if (image_xscale > 2)
	image_xscale = 2;
if (image_xscale < -2)
	image_xscale = -2;
if (sinsign > 0)
{
	depth = 21;
	active = 0;
	image_blend = c_gray;
}
if (sinsign < 0)
{
	depth = 0;
	if (image_alpha >= 1)
		active = 1;
	image_blend = c_white;
}
vsin += 1;
if (altmode == 0 || altmode == 2 || altmode == 3)
	y += (sin(vsin / 10) * 3.5);
if (altmode == 1)
	y -= (sin(vsin / 10) * 3.5);
if (altmode == 99)
{
	altsin += 1;
	y += (cos(altsin / 20) * 2);
}
if (altmode == 99)
{
	altsin += 1;
	y += (cos(altsin / 10) * 2);
}
