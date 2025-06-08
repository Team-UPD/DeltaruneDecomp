timer++;
var scale = abs(sin(timer / 10));
draw_sprite_ext(sprite_index, 0, x, y, 1 + scale, 1 + scale, image_angle, image_blend, 0.5);
scale = abs(sin(timer / 14));
draw_sprite_ext(sprite_index, 0, x, y, 1.2 + scale, 1.2 + scale, image_angle, image_blend, 0.5);
