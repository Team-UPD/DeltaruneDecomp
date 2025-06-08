image_index = pressed;
draw_sprite_ext(sprite_index, image_index, x, y + drawY, 1, 1, 0, image_blend, image_alpha);
draw_sprite_ext(spr_ch2_keyboard_tile_text, textImage, x, y + (pressed * 4) + drawY, 2, 2, 0, image_blend, image_alpha);
