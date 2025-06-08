function _pal_swap_layer_start()
{
	if (event_type == ev_draw)
	{
		var _id = ds_priority_delete_min(global.Pal_Layer_Priority);
		var _data = ds_map_find_value(global.Pal_Layer_Map, _id);
		if (ds_list_find_index(_data, undefined) != -1)
			exit;
		pal_swap_set(ds_list_find_value(_data, 0), ds_list_find_value(_data, 1), ds_list_find_value(_data, 2));
		ds_priority_add(global.Pal_Layer_Temp_Priority, _id, layer_get_depth(_id));
	}
}
