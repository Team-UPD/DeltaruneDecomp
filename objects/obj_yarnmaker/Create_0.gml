grazed = 0;
target = 0;
inv = 120;
damage = 124;
target = 0;
element = 6;
grazepoints = 5;
timepoints = 5;
dont = 1;
activetimer = 0;
difficulty = 1;
childspeed = 6;
childgravity = 0;
scale = 0;
state = 0;
image_xscale = 0;
image_yscale = 0;
if (instance_exists(obj_heart))
	futuredir = point_direction(x, y, obj_heart.x + 8, obj_heart.y + 8);
else
	instance_destroy();
