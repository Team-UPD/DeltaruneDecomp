if (init == 0)
{
	if (smallrocks)
	{
		sourcelayer = "BG_Rocks_Small";
		image_blend = make_color_rgb(163, 183, 255);
	}
	depth = layer_get_depth(sourcelayer);
}
if (smallrocks)
	y -= 2;
else
	y -= 5;
if (y <= cameray())
{
	layer_set_visible(sourcelayer, 1);
	layer_y(sourcelayer, y);
	instance_destroy();
}
