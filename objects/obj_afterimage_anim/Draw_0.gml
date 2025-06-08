if (init == 0)
{
	init = 1;
	image_count = sprite_get_number(sprite_index) - 1;
}
if (reverse == 1)
{
	reverse = 0;
	image_index = image_count;
	maxalpha = image_alpha;
	image_alpha = 0;
	fade *= -1;
}
image_alpha -= fade;
image_index = (1 - (image_alpha / 1)) * image_count;
if (image_alpha < 0 || image_alpha > 1)
	instance_destroy();
d3d_set_fog(true, image_blend, 0, 1);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, image_blend, image_alpha * maxalpha);
d3d_set_fog(false, c_black, 0, 0);
