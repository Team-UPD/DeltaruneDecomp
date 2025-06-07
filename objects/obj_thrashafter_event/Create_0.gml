con = 1;
image_xscale = 2;
image_yscale = 2;
if (global.flag[229] >= 1 && global.plot < 150)
{
	npc = instance_create(x, y - 80, obj_npc_room);
	npc.sprite_index = spr_lancer_dt;
	con = 999;
	instance_destroy();
}
