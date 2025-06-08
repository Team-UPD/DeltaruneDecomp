timer++;
alphaer1 = abs(sin(timer / 20));
alphaer2 = abs(sin((timer + 10) / 20));
draw_sprite_ext(spr_slideArrow, 0, x, y, 2, -2, 0, c_white, alphaer1);
draw_sprite_ext(spr_slideArrow, 0, x + sprite_width + 10, y, 2, -2, 0, c_white, alphaer2);
