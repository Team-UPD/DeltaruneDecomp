xx = scr_orbitx(x + 9, y + 9, x, y, image_angle);
yy = scr_orbity(x + 9, y + 9, x, y, image_angle);
if (image_xscale != 1 || image_yscale != 1)
	draw_sprite_ext_centerscale(sprite_index, obj_heart.image_index, x, y, image_xscale, image_yscale, image_angle, 16777215, image_alpha);
else
	draw_sprite_ext(sprite_index, obj_heart.image_index, xx, yy, image_xscale, image_yscale, image_angle, c_white, image_alpha);
