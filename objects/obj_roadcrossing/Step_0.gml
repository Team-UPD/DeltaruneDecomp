if (instance_exists(obj_caterpillarchara))
{
	with (obj_caterpillarchara)
	{
		if (other.susie == 0)
		{
			if (name == "susie")
				other.susie = id;
		}
		if (other.ralsei == 0)
		{
			if (name == "ralsei")
				other.ralsei = id;
		}
	}
}
if (instance_exists(obj_traffic_road_trigger))
{
	with (obj_mainchara)
	{
		if (place_meeting(x, y, obj_traffic_road_trigger))
			other.onroad = true;
		else
			other.onroad = false;
	}
}
if (onroad == true)
{
	if (i_ex(ralsei))
	{
		if (ralsei.image_alpha > 0)
			ralsei.image_alpha -= 0.1;
	}
	if (i_ex(susie))
	{
		if (susie.image_alpha > 0)
			susie.image_alpha -= 0.1;
	}
}
if (onroad == false)
{
	if (i_ex(ralsei))
	{
		if (ralsei.image_alpha < 1)
			ralsei.image_alpha += 0.1;
	}
	if (i_ex(susie))
	{
		if (susie.image_alpha < 1)
			susie.image_alpha += 0.1;
	}
}
if (!i_ex(obj_traffic_road_trigger))
{
	if (instance_exists(obj_caterpillarchara))
	{
		with (obj_caterpillarchara)
		{
			if (image_alpha < 1)
				image_alpha += 0.1;
		}
	}
}
