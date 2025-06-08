friction = 0.2;
image_alpha = 0.8;
if (instance_exists(obj_mainchara) && getdepth)
	depth = obj_mainchara.depth + 100;
remx = x;
remy = y;
x += random_range(1, -1);
y += random_range(1, -1);
hspeed += random_range(-0.5, 0.5);
vspeed += random_range(-0.5, 0.5);
image_angle += random_range(10, -10);
if (place_meeting(x, y, obj_solidblock) || (place_meeting(x, y, obj_bug_treasure_chest) && getdepth == true))
{
	x = remx;
	y = remy;
}
if (y > room_height)
	y = remy;
timer++;
if (timer >= lifecycle)
	image_alpha *= 0.9;
if (image_alpha < 0.05)
	instance_destroy();
if (y <= (starty - 20) || timer > 10)
	getdepth = true;
