imageindex += 0.25;
if (con == 0)
	image_angle = -90;
if (con == 1)
	image_angle = -180;
if (con == 2)
	image_angle = -270;
draw_sprite_ext(spr_holemouse, imageindex, x, y, 2, 2, image_angle, c_white, 1);
draw_sprite_ext(spr_holemouse_tail, imageindex, x, y, 2, 2, image_angle, c_white, 1);
