if (init == 0)
{
	if (use_pivot)
	{
		if (pivotx == -999)
			pivotx = 0;
		if (pivoty == -999)
			pivoty = 0;
		startscalex = pivotx * image_xscale;
		startscaley = pivoty * image_yscale;
	}
	else
	{
		if (pivotx == -999)
			pivotx = sprite_width / 2;
		if (pivoty == -999)
			pivoty = sprite_height / 2;
	}
	xrate *= scale;
	yrate *= scale;
	init = 1;
	if (reverse == 1)
	{
		image_xscale += (xrate / fade);
		image_yscale += (yrate / fade);
		xrate *= -1;
		yrate *= -1;
		maxalpha = image_alpha;
		image_alpha = 0;
		fade *= -1;
	}
	exit;
}
maxalpha = clamp(maxalpha, 0, 1);
image_alpha -= fade;
image_xscale += xrate;
image_yscale += yrate;
if (use_pivot)
{
	xx = (x + (pivotx * image_xscale)) - startscalex;
	yy = (y + (pivoty * image_yscale)) - startscaley;
}
else
{
	xx = x - (pivotx * ((image_xscale - 2) / 2));
	yy = y - (pivoty * ((image_yscale - 2) / 2));
}
if (image_alpha < 0 || image_alpha > 1)
	instance_destroy();
d3d_set_fog(true, image_blend, 0, 1);
draw_sprite_ext(sprite_index, image_index, xx, yy, image_xscale, image_yscale, 0, image_blend, image_alpha * maxalpha);
d3d_set_fog(false, c_black, 0, 0);
