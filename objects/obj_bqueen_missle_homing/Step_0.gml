image_angle = direction - 90;
if (instance_exists(obj_heart))
	idealdir = point_direction(x, y, obj_heart.x + 10, obj_heart.y + 10);
else
	instance_destroy();
vspeed += lengthdir_y(homingfactor, idealdir);
hspeed += lengthdir_x(homingfactor, idealdir);
if (speed > 10)
	speed = 10;
homingfactor = scr_approach(homingfactor, maxhomingfactor, 0.2);
timer++;
if (timer >= 12)
	maxhomingfactor = 0.3;
if (timer >= 60)
	instance_destroy();
if (global.turntimer < 3)
	instance_destroy();
