var jukebox = scr_marker(44, 82, bg_dw_castle_cafe_juke);
with (jukebox)
	scr_depth();
var table_a = scr_marker(42, 230, bg_dw_castle_cafe_table);
with (table_a)
	scr_depth();
var table_b = scr_marker(260, 230, bg_dw_castle_cafe_table);
with (table_b)
	scr_depth();
var table_c = scr_marker(140, 325, bg_dw_castle_cafe_table);
with (table_c)
	scr_depth();
var table_collider_a = instance_create(table_a.x + 8, table_a.y + 10, obj_soliddark);
table_collider_a.image_xscale = 1.9;
table_collider_a.image_yscale = 1.3;
var table_collider_b = instance_create(table_b.x + 8, table_b.y + 10, obj_soliddark);
table_collider_b.image_xscale = 1.9;
table_collider_b.image_yscale = 1.3;
var table_collider_c = instance_create(table_c.x + 8, table_c.y + 10, obj_soliddark);
table_collider_c.image_xscale = 1.9;
table_collider_c.image_yscale = 1.3;
var counter = scr_marker(365, 110, bg_dw_castle_cafe_counter);
counter.depth = 98000;
tm_con = -1;
t_con = -1;
if (global.chapter == 1)
{
	var topchef = instance_create(395, 70, obj_npc_room);
	topchef.sprite_index = spr_topchef;
}
if (global.chapter == 2)
{
	if (global.plot < 200)
	{
		var topchef = instance_create(405, 70, obj_npc_room);
		topchef.sprite_index = spr_topchef;
	}
	else
	{
		var swatchlingA = instance_create(418, 62, obj_npc_room);
		swatchlingA.sprite_index = spr_npc_swatchling_cafe;
		with (swatchlingA)
			scr_depth();
		if (global.flag[636] == 1)
		{
			var swatchlingB = instance_create(517, 187, obj_npc_room);
			swatchlingB.sprite_index = spr_npc_swatchling_down;
			with (swatchlingB)
				scr_depth();
		}
		if (global.flag[642] == 1 && global.flag[632] == 1)
		{
			var tm = instance_create(237, 23, obj_npc_room);
			tm.sprite_index = spr_npc_tasquemanager;
			tm.image_xscale = -2;
		}
		if (global.flag[632] == 1)
		{
			var tasqueA = instance_create(255, 63, obj_npc_room);
			tasqueA.sprite_index = spr_tasque_idle;
		}
	}
}
