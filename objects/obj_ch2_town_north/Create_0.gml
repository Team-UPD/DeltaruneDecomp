con = -1;
if (global.chapter != 2)
{
	instance_destroy();
}
else
{
	var bratty_door = instance_create(920, 60, obj_readable_room1);
	bratty_door.image_xscale = 1.5;
	with (obj_doorX)
		instance_destroy();
	var flower_sign = instance_create(1255, 70, obj_npc_sign);
	flower_sign.sprite_index = spr_flowershop_sign;
	with (flower_sign)
		depth = 98700;
	var sign_collider = instance_create(1250, 96, obj_solidblock);
	sign_collider.image_xscale = 2;
	sign_collider.image_yscale = 1.1;
	var froggit_npc = instance_create(1050, 190, obj_npc_room);
	froggit_npc.sprite_index = spr_smallfrog;
	with (froggit_npc)
		scr_depth();
	var rabbit_npc = instance_create(1135, 105, obj_npc_room);
	rabbit_npc.sprite_index = spr_npc_bunbun;
	with (rabbit_npc)
		scr_depth();
	var mw_npc = instance_create(1295, 105, obj_npc_room);
	mw_npc.sprite_index = spr_npc_mikewazowski;
	with (mw_npc)
		scr_depth();
}
