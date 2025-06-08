if (layer_y_pos == 0)
{
	var y_pos = 0;
	var x_pos = 0;
	if (i_ex(obj_parallaxer_layer_cyber))
	{
		with (obj_parallaxer_layer_cyber)
		{
			if (sprite_index == spr_bg_cyber_parallax_buildings)
			{
				y_pos = y;
				x_pos = x;
			}
		}
	}
	layer_y_pos = y_pos;
	layer_x_pos = x_pos;
}
