swatch_npc_a = instance_create(135, 285, obj_npc_butler);
with (swatch_npc_a)
{
	sprite_index = spr_npc_swatchling_up;
	scr_depth();
	current_pal = yellow;
}
swatch_npc_b = instance_create(265, 255, obj_npc_butler);
with (swatch_npc_b)
{
	sprite_index = spr_npc_swatchling_up;
	scr_depth();
}
swatch_npc_c = instance_create(395, 285, obj_npc_butler);
with (swatch_npc_c)
{
	sprite_index = spr_npc_swatchling_up;
	scr_depth();
	current_pal = orange;
}
projection = instance_create(240, 180, obj_readable_room1);
projection.image_xscale = 8;
projection.image_yscale = 1.5;
