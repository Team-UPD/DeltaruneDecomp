if (surface_exists(surf))
	surface_free(surf);
if (sprite_exists(spr_battleborder))
	sprite_delete(spr_battleborder);
if (room == room_dw_mansion_east_2f_transformed_new)
{
	if (sprite_exists(spr_border_none))
		sprite_delete(spr_border_none);
	if (sprite_exists(spr_border_left))
		sprite_delete(spr_border_left);
	if (sprite_exists(spr_border_right))
		sprite_delete(spr_border_right);
	if (sprite_exists(spr_border_both))
		sprite_delete(spr_border_both);
}
