function dsmapToStruct(arg0)
{
	var struct = {};
	var dsmaparray = ds_map_keys_to_array(arg0);
	for (var i = 0; i < array_length(dsmaparray); i++)
	{
		var key = dsmaparray[i];
		var value = ds_map_find_value(arg0, key);
		if (ds_exists(arg0, ds_type_map))
		{
			if (ds_map_exists(arg0, key))
				variable_struct_set(struct, key, value);
		}
	}
	return struct;
}
