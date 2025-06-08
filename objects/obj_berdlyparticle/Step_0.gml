if (x <= -100)
	instance_destroy();
if (y >= (room_height + 10))
	instance_destroy();
timer++;
if (timer > 6)
	image_alpha -= 0.1;
