if (type == 0)
{
	timer++;
	if (timer == 1)
	{
		instancemax = 0;
		for (var i = 0; i < instance_count; i += 1)
		{
			if (instance_id[i] != noone && instance_id[i].depth >= 5000 && instance_id[i].depth <= 100000 && instance_id[i].visible == 1 && instance_id[i].sprite_index >= 1)
			{
				listinstance[instancemax] = instance_id[i];
				instancemax++;
			}
		}
		for (var i = 0; i < instancemax; i++)
		{
			shadow[i] = instance_create(x, y, obj_marker);
			frontshadow[i] = instance_create(x, y, obj_marker);
		}
	}
	if (timer >= 1)
	{
		for (var i = 0; i < instancemax; i++)
		{
			with (shadow[i])
			{
				sprite_index = other.listinstance[other.i].sprite_index;
				image_index = other.listinstance[other.i].image_index;
				image_xscale = other.listinstance[other.i].image_xscale;
				image_yscale = other.listinstance[other.i].image_yscale * -1 * other.shadLength;
				x = other.listinstance[other.i].x;
				y = (other.listinstance[other.i].y + (sprite_height * image_yscale)) - 4;
				image_blend = other.floorShadowColor;
				image_alpha = other.floorshadOpacity;
				depth = 900000;
			}
			with (frontshadow[i])
			{
				sprite_index = other.listinstance[other.i].sprite_index;
				image_xscale = other.listinstance[other.i].image_xscale;
				image_yscale = other.listinstance[other.i].image_yscale;
				x = other.listinstance[other.i].x;
				y = other.listinstance[other.i].y + 4;
				image_blend = other.frontShadowColor;
				image_alpha = other.frontshadOpacity;
				image_index = other.listinstance[other.i].image_index;
				depth = other.listinstance[other.i].depth - 1;
			}
		}
	}
}
if (type == 1)
{
	if (init == 0)
	{
		instancemax = 0;
		with (obj_mainchara)
		{
			other.listinstance[other.instancemax] = id;
			other.instancemax++;
		}
		with (obj_npc_butler)
		{
			other.listinstance[other.instancemax] = id;
			other.instancemax++;
		}
		with (obj_caterpillarchara)
		{
			other.listinstance[other.instancemax] = id;
			other.instancemax++;
		}
		init = 1;
	}
	if (init == 1)
	{
		for (var i = 0; i < instancemax; i++)
		{
			shadow[i] = instance_create(x, y, obj_marker);
			frontshadow[i] = instance_create(x, y, obj_marker);
		}
		init = 2;
	}
	if (init == 2)
	{
		for (var i = 0; i < instancemax; i++)
		{
			with (shadow[i])
			{
				sprite_index = other.listinstance[i].sprite_index;
				image_index = other.listinstance[i].image_index;
				image_xscale = other.listinstance[i].image_xscale;
				image_yscale = other.listinstance[i].image_yscale * -1 * other.shadLength;
				x = other.listinstance[i].x;
				y = (other.listinstance[i].y + (sprite_height * image_yscale)) - 4;
				image_blend = other.floorShadowColor;
				image_alpha = other.floorshadOpacity;
				depth = 900000;
			}
			with (frontshadow[i])
			{
				sprite_index = other.listinstance[i].sprite_index;
				image_xscale = other.listinstance[i].image_xscale;
				image_yscale = other.listinstance[i].image_yscale;
				x = other.listinstance[i].x;
				y = other.listinstance[i].y + 4;
				image_blend = other.frontShadowColor;
				image_alpha = other.frontshadOpacity;
				image_index = other.listinstance[i].image_index;
				depth = other.listinstance[i].depth - 1;
			}
		}
	}
}
