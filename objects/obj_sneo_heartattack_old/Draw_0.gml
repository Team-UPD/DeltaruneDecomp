draw_set_color(c_green);
draw_line_width(x, y, xstart, ystart, 2);
draw_set_color(c_white);
draw_sprite_ext(sprite_index, image_index, x + random(shakex), y + random(shakey), image_xscale, image_yscale, 0, c_white, image_alpha);
