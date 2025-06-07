image_blend = obj_darkfountain.colcol;
siner = obj_darkfountain.siner;
draw_sprite_ext(sprite_index, image_index, x, y - 4, 2, 2, 0, image_blend, 1);
draw_sprite_ext(sussprite, susindex, susx, susy - 4, 2, 2, 0, image_blend, 1);
image_blend = c_black;
draw_sprite_ext(sprite_index, image_index, x, (y + (sprite_height * 4)) - 8, 2, -6, 0, image_blend, 1);
draw_sprite_ext(sussprite, susindex, susx, (susy + 368) - 8, 2, -6, 0, image_blend, 1);
draw_self();
draw_sprite_ext(sussprite, susindex, susx, susy, 2, 2, 0, image_blend, 1);
