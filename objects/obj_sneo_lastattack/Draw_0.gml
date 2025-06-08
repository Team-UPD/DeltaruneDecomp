if (hurtalpha > 0)
	hurtalpha -= 0.1;
draw_sprite(spr_sneo_final_forme, 3, x, y);
draw_sprite_ext(spr_sneo_lastattack_head_top, 0, x + 60 + (mouthbottomy / 2) + x_offset, y + mouthtopy + y_offset, 1, 1, mouthangle, c_white, 1);
draw_sprite(sprite_index, 1, x + (mouthbottomy / 2) + x_offset, y + mouthbottomy + y_offset);
draw_sprite_ext(spr_sneo_lastattack_head_top, 0, x + 60 + (mouthbottomy / 2) + x_offset, y + mouthtopy + y_offset, 1, 1, mouthangle, c_yellow, hurtalpha);
draw_sprite_ext(sprite_index, 1, x + (mouthbottomy / 2) + x_offset, y + mouthbottomy + y_offset, 1, 1, 0, c_yellow, hurtalpha);
