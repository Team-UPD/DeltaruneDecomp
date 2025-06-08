scr_depth_alt();
draw_sprite(spr_thrash_wheel, image_index, x - 8, (y - 8) + (active * 8));
draw_self();
draw_sprite(spr_thrash_wheel, image_index, x + 8, (y - 8) + (active * 8));
tiltAmount = 0;
if ((startX - x) > 325)
	tiltAmount = 30;
if ((startX - x) < -325)
	tiltAmount = -30;
image_angle = tiltAmount;
