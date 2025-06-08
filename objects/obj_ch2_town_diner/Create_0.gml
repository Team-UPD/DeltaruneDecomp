if (global.chapter == 2)
{
	with (obj_caterpillarchara)
	{
		follow = 0;
		visible = 0;
	}
	var tallhat = instance_create(185, 95, obj_npc_room);
	tallhat.sprite_index = spr_npc_most_improved_1997_ch2;
	var aaron = instance_create(200, 95, obj_npc_room);
	aaron.sprite_index = spr_npc_aaron;
	var catti_mom = instance_create(36, 74, obj_npc_room_animated);
	catti_mom.sprite_index = spr_npc_catti_mom_no1;
	with (catti_mom)
		scr_depth();
	var catty_dad = instance_create(42, 120, obj_npc_room);
	catty_dad.sprite_index = spr_npc_catti_dad_diner;
	var catti = instance_create(240, 152, obj_npc_room_animated);
	catti.sprite_index = spr_npc_catty_ukelele;
	catti.depth = 4000;
	var jo = instance_create(240, 175, obj_npc_room);
	jo.sprite_index = spr_jockington_lt;
	var ficus = instance_create(55, 160, obj_npc_room);
	ficus.sprite_index = spr_npc_ficus;
	var diner_table = scr_marker(7, 172, bg_diner_table);
	diner_table.depth = ficus.depth - 100;
	var seat_back = scr_marker(236, 212, bg_diner_seat_back);
	seat_back.depth = jo.depth - 100;
}
else
{
	instance_destroy();
}
