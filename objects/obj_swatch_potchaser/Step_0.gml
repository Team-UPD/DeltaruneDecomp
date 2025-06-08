if (dir == "left")
{
	if (target.going == "left")
	{
		sprite_index = spr_npc_butler;
		image_xscale = 2;
		x = target.x + 20;
		y = target.y - 156;
	}
	if (target.going == "right")
	{
		sprite_index = spr_npc_swatchling_scared;
		image_xscale = -2;
		x = target.x + 120;
		y = target.y - 150;
	}
}
if (dir == "right")
{
	if (target.going == "left")
	{
		sprite_index = spr_npc_swatchling_scared;
		image_xscale = 2;
		x = target.x - 120;
		y = target.y - 150;
	}
	if (target.going == "right")
	{
		sprite_index = spr_npc_butler;
		image_xscale = -2;
		x = target.x - 20;
		y = target.y - 156;
	}
}
if (abs(target.tellspeed) < 3)
	image_speed = abs(target.tellspeed) / 15;
else
	image_speed = 0.25;
if (sprite_index == spr_npc_swatchling_scared && image_xscale == 2)
{
	colX = 30;
	colY = 116;
}
if (sprite_index == spr_npc_swatchling_scared && image_xscale == -2)
{
	colX = -71;
	colY = 116;
}
if (sprite_index == spr_npc_butler && image_xscale == 2)
{
	colX = 61;
	colY = 122;
}
if (sprite_index == spr_npc_butler && image_xscale == -2)
{
	colX = -101;
	colY = 122;
}
if (point_in_rectangle(charaX(), charaY(), x + colX, y + colY, x + colX + 40, y + colY + 34) || (instance_exists(obj_caterpillarchara) && point_in_rectangle(obj_caterpillarchara.x + (obj_caterpillarchara.sprite_width / 2), (obj_caterpillarchara.y + obj_caterpillarchara.sprite_height) - 8, x + colX, y + colY, x + colX + 40, y + colY + 34)))
{
	if (room == room_dw_mansion_east_2f_c)
	{
		if (instance_exists(obj_swatch_potchaser))
		{
			with (obj_swatch_potchaser)
			{
				newenem = instance_create(x, y, obj_chaseenemy);
				with (newenem)
				{
					if (other.sprite_index == spr_npc_swatchling_scared)
					{
						if (other.image_xscale == -2)
						{
							x = other.x - 110;
							y = other.y + 2;
						}
						else
						{
							x = other.x - 12;
							y = other.y + 2;
						}
					}
					else if (other.image_xscale == -2)
					{
						x = other.x - 142;
						y = other.y;
					}
					else
					{
						x = other.x + 24;
						y = other.y;
					}
					myencounter = 56;
					sprite_index = spr_npc_swatchling_sweep;
					touchsprite = spr_npc_swatchling_sweep;
					radius = 10000;
					ignoresolid = 0;
					alertcon = 0;
					eraser = 1;
					facing = 1;
				}
				instance_destroy();
			}
		}
		if (instance_exists(obj_controller_dw_mansion_potBalance))
			obj_controller_dw_mansion_potBalance.triggered = 1;
	}
}
