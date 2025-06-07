draw_sprite_ext(spr_jokerscythe_big, 0, x, y, 2, 2, image_angle, c_white, (1 - image_alpha) + 0.2 + (sin(siner / 10) / 2.5));
draw_self();
draw_set_color(c_red);
draw_rectangle(x - 1, y - 1, x + 1, y + 1, false);
