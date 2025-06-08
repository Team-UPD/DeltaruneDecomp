scr_bullet_init();
active = 0;
image_alpha = 0;
if (instance_exists(obj_heart))
	futuredir = point_direction(x, y, obj_heart.x + 8, obj_heart.y + 8);
else
	instance_destroy();
