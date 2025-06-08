layerarray = layer_get_all();
for (var i = 0; i < array_length_1d(layerarray); i++)
{
	if (layer_get_name(layerarray[i]) == "GIVE_DEPTH")
	{
		elements = layer_get_all_elements(layerarray[i]);
		for (var j = 0; j < array_length_1d(elements); j++)
		{
			if (layer_get_element_type(elements[j]) == 4)
			{
				layersprite = scr_marker(layer_sprite_get_x(elements[j]), layer_sprite_get_y(elements[j]), layer_sprite_get_sprite(elements[j]));
				layersprite.image_xscale = layer_sprite_get_xscale(elements[j]);
				layersprite.image_yscale = layer_sprite_get_yscale(elements[j]);
				layersprite.image_speed = layer_sprite_get_speed(elements[j]);
				layersprite.image_index = layer_sprite_get_index(elements[j]);
				with (layersprite)
					scr_depth();
				layer_sprite_destroy(elements[j]);
			}
		}
		break;
	}
}
instance_destroy();
