if (instance_exists(obj_mainchara))
	distance = distance_to_object(obj_mainchara);
else
	distance = 999;
if (holecon == 0)
{
	if (distance <= maxdist)
	{
		holecon = 1;
		image_index = 0;
		sprite_index = spr_cloverhole;
	}
}
if (holecon == 1)
{
	if (distance <= (maxdist + 20))
	{
		image_index += 0.5;
		if (image_index >= 10)
		{
			image_index = 0;
			sprite_index = sprite_type[type];
			holecon = 2;
		}
	}
	else
	{
		image_index -= 0.5;
		if (image_index <= 0)
		{
			image_index = 0;
			holecon = 0;
		}
	}
}
if (holecon == 2)
{
	image_index += 0.334;
	if (distance > (maxdist + 10))
	{
		sprite_index = spr_cloverhole;
		image_index = 10;
		holecon = 1;
	}
}
