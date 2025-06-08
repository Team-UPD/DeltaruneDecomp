if (instance_exists(obj_queen_finger) && (obj_queen_finger.scrollSpeed > 14 || obj_queen_finger.scrollPrep))
	exit;
x = xstart + (sin(siner / 12) * 60);
siner += (4 / clamp(obj_queen_finger.scrollSpeed, 4, 8));
