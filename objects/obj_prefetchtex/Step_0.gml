if (instance_exists(obj_border_controller))
{
	draw = true;
	if (prog < array_length(pages))
	{
		texture_prefetch(pages[prog]);
		prog++;
	}
	else
	{
		loaded = true;
		global.prefetchtexload = true;
	}
}
