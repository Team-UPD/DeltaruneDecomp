if (flash)
{
	d3d_set_fog(true, c_white, 0, 1);
	draw_self();
	d3d_set_fog(false, c_black, 0, 0);
	flash = false;
	exit;
}
siner++;
var hw = width / 2;
var hh = height / 2;
var m = lerp_ease_out(0, sprite_height / 2, (siner + 2) / 10, 1);
image_alpha -= faderate;
draw_sprite_part_ext(sprite_index, image_index, 0, 0, hw, hh, x - m - ((xo * image_xscale) / 2), y - m - ((yo * image_yscale) / 2), image_xscale, image_yscale, image_blend, image_alpha);
draw_sprite_part_ext(sprite_index, image_index, hw, 0, hw, hh, (x + m) - ((xo * image_xscale) / 2), y - m - ((yo * image_yscale) / 2), image_xscale, image_yscale, image_blend, image_alpha);
draw_sprite_part_ext(sprite_index, image_index, 0, hh, hw, hh, x - m - ((xo * image_xscale) / 2), (y + m) - ((yo * image_yscale) / 2), image_xscale, image_yscale, image_blend, image_alpha);
draw_sprite_part_ext(sprite_index, image_index, hw, hh, hw, hh, (x + m) - ((xo * image_xscale) / 2), (y + m) - ((yo * image_yscale) / 2), image_xscale, image_yscale, image_blend, image_alpha);
if (image_alpha < 0)
	instance_destroy();
