draw_set_color(c_red);
draw_sprite_ext(spr_lasergun_laser_telegraph, 0, x, y, 999, 0.7, image_angle, c_white, 0.3);
siner++;
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale + (sin(siner) / 20), image_yscale + (sin(siner) / 20), 0, c_white, image_alpha);
