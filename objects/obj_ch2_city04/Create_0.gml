con = -1;
customcon = 0;
if (global.chapter != 2 || global.plot >= 83)
{
	instance_destroy();
}
else
{
	scr_losechar();
	if (instance_exists(obj_caterpillarchara))
		instance_destroy(obj_caterpillarchara);
	berdlynpc = instance_create(833, 171, obj_npc_sign);
	berdlynpc.sprite_index = spr_berdly_walk_down_dw;
}
