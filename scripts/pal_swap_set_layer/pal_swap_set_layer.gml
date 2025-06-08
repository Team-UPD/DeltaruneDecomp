function pal_swap_set_layer(arg0, arg1, arg2, arg3)
{
	var _pal_sprite = arg0;
	var _pal_index = arg1;
	var _layer_index = arg2;
	var _pal_is_surface = arg3;
	var _data = ds_map_find_value(global.Pal_Layer_Map, _layer_index);
	if (_data == undefined)
		exit;
	ds_list_clear(_data);
	ds_list_add(_data, _pal_sprite, _pal_index, _pal_is_surface);
}
