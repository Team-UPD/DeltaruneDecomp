con = -1;
if (global.chapter != 2)
{
	instance_destroy();
}
else
{
	var burgerpants_npc = instance_create(234, 91, obj_npc_room);
	burgerpants_npc.sprite_index = spr_burgerpants_sit_phone;
	burgerpants_npc.depth = 100;
	var napkins = scr_marker(212, 118, spr_lw_pizza_table_napkins);
	napkins.depth = burgerpants_npc.depth - 10;
	var nicecream_npc = instance_create(77, 52, obj_npc_room);
	nicecream_npc.sprite_index = spr_npc_nicecream_mop;
	with (nicecream_npc)
		scr_depth();
	var icewolf_npc = instance_create(73, 133, obj_npc_room);
	icewolf_npc.sprite_index = spr_npc_icewolf;
	icewolf_npc.depth = 95000;
	var table_bottom = scr_marker(36, 118, spr_lw_pizza_table_a_bottom);
	table_bottom.depth = icewolf_npc.depth - 10;
}
