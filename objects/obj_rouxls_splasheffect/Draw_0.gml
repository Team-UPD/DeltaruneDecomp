siner++;
var _duration = 2.5 * yscale;
if (sin(siner / _duration) < 0)
	instance_destroy();
draw_sprite_ext(sprite_index, image_index, x, y, ((siner / _duration) + 0.75) * xscale, sin(siner / _duration) * yscale, 0, c_white, 1);
