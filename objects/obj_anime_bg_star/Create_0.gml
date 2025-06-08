vspeed = -60;
image_angle = irandom(360);
image_alpha = obj_anime_bg_controller.image_alpha;
depth = 1;
if (instance_exists(obj_anime_bg_controller))
	depth = obj_anime_bg_controller.depth - 1;
