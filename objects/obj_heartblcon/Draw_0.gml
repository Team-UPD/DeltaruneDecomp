siner += 1;
draw_sprite(spr_battleblcon, 0, x, y);
draw_sprite(sprite_index, image_index, x + 15 + round(sin(siner / 8)), y + 15 + round(cos(siner / 8)));
