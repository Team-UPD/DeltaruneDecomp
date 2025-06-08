timer = 0;
con = 0;
grav = 0;
image_angle = random(360);
direction = random(360);
speed = 3 + random(7);
image_alpha = 2.9;
if (instance_exists(obj_heart))
	depth = obj_heart.depth - 100;
else
	instance_destroy();
