draw_set_color(#133966);
draw_rectangle(x - 4, y - 4, x + (sprite_get_width(sprite_index) * image_xscale) + 5, room_height, 0);
draw_set_color(c_white);
scr_draw_sprite_tiled_area(sprite_index, 0, x, y, x, y, x + (sprite_get_width(sprite_index) * image_xscale), room_height, 2, 2, c_white, 1);
draw_sprite_ext(top[top_type], 0, x, y - (sprite_get_height(top[top_type]) * 2), 2, 2, 0, c_white, 1);
