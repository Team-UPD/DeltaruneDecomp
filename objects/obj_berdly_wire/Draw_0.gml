sinerx = 0;
sinery = 0;
siner1 += siner_add1;
var sinmove_y = cos(siner1) * siner_amplitude1;
sinerx += lengthdir_x(sinmove_y, siner_direction1);
sinery += lengthdir_y(sinmove_y, siner_direction1);
draw_sprite_ext(sprite_index, image_index, x + sinerx, y + sinery, 2, 2, 0, c_white, 1);
