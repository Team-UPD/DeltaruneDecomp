function pal_swap_enable_layer(arg0)
{
	var _layer_index = arg0;
	if (!layer_exists(_layer_index))
		exit;
	var _data = ds_list_create();
	ds_list_add(_data, undefined, undefined, undefined);
	layer_script_begin(_layer_index, _pal_swap_layer_start);
	layer_script_end(_layer_index, _pal_swap_layer_end);
	ds_map_add_list(global.Pal_Layer_Map, _layer_index, _data);
	ds_priority_add(global.Pal_Layer_Priority, _layer_index, layer_get_depth(_layer_index));
}
