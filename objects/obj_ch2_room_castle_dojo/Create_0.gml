con = -1;
var dojo_npc = instance_create(290, 220, obj_npc_dojo);
with (dojo_npc)
{
	scr_depth();
	image_xscale = 2;
	image_yscale = 2;
}
var puzzle_master_npc = instance_create(130, 80, obj_npc_puzzlemaster2);
with (puzzle_master_npc)
	scr_depth();
var desk_marker = scr_marker(84, 112, bg_dw_dojo_help_desk);
desk_marker.depth = puzzle_master_npc.depth - 10;
var desk_collider = instance_create(84, 115, obj_soliddark);
desk_collider.image_xscale = 4;
desk_collider.image_yscale = 1.5;
var help_marker = scr_marker(115, 30, bg_dw_dojo_help);
with (help_marker)
	scr_depth();
var clover_npc = instance_create(370, 248, obj_npc_room);
clover_npc.sprite_index = spr_clubs_idle;
with (clover_npc)
	scr_depth();
var blockguy_npc = instance_create(480, 78, obj_npc_room);
blockguy_npc.sprite_index = spr_blockguy_idleFriendly;
with (blockguy_npc)
	scr_depth();
if (global.flag[640] != 1 || global.plot < 200)
{
	var pippins_npc = instance_create(472, 200, obj_npc_room);
	pippins_npc.sprite_index = spr_npc_pippins;
	with (pippins_npc)
		scr_depth();
}
else
{
	var were_npc = instance_create(452, 220, obj_npc_room);
	were_npc.sprite_index = spr_werewerewire_idle;
	with (were_npc)
		scr_depth();
}
