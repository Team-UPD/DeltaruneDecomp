if (door_type == 0 && sprite_index != spr_dw_mansion_door_closed)
{
	sprite_index = spr_dw_mansion_door_closed;
	image_xscale = 1;
	image_yscale = 1;
}
if (door_type == 1 && sprite_index != spr_dw_mansion_door_open)
{
	sprite_index = spr_dw_mansion_door_open;
	image_xscale = 2;
	image_yscale = 2;
}
if (door_type == 2 && sprite_index != spr_dw_mansion_door_wall)
{
	sprite_index = spr_dw_mansion_door_wall;
	image_xscale = 1;
	image_yscale = 1;
}
