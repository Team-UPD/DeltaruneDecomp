grazed = 0;
grazepoints = 5;
timepoints = 5;
target = 0;
dont = 1;
inv = 120;
damage = 60;
active = 0;
image_alpha = 0;
if (instance_exists(obj_heart))
	futuredir = point_direction(x, y, obj_heart.x + 8, obj_heart.y + 8);
else
	instance_destroy();
