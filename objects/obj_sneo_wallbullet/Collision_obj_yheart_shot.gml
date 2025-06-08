if (y < (cameray() + 110))
	exit;
if (y > (cameray() + 233))
	exit;
if (image_alpha < 0.5)
	exit;
hitshot = other;
event_user(0);
