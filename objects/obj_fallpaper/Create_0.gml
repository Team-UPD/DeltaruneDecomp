alarm[0] = 1;
y += 10;
image_angle = random(10) - random(10);
after_x = (x - 30) / 260;
if (after_x > 1)
	after_x = 1;
image_blend = merge_color(c_white, c_black, after_x);
