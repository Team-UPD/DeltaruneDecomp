if (x >= (room_width + 100) || x <= -100 || y >= (room_height + 100) || y <= -100)
	instance_destroy();
direction += angle_speed;
image_angle = direction;
if (alarm[0] == 8 || alarm[0] == 16)
	flashtimer = 5;
