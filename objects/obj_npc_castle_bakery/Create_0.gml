instance_create(352, 115, obj_npc_hammerguy);
hammer_interact = instance_create(370, 205, obj_readable_room1);
hammer_interact.image_xscale = 3;
hammer_interact.image_yscale = 2;
var chefl = instance_create(355, 155, obj_npc_room);
chefl.sprite_index = spr_lancer_lt_mustache;
chefl.image_xscale = -2;
var chefl_interact = instance_create(285, 205, obj_readable_room1);
chefl_interact.image_xscale = 3;
chefl_interact.image_yscale = 2;
if (global.chapter == 2 && global.plot >= 200)
{
	var topchef = instance_create(215, 240, obj_npc_room);
	topchef.sprite_index = spr_topchef;
}
