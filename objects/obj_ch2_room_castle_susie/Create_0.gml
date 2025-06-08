con = -1;
cutscene_master = noone;
leaveCounter = 0;
if (global.flag[393] == 1)
{
	var susie_statue = instance_create(416, 224, obj_npc_sign);
	susie_statue.sprite_index = spr_dw_susie_statue;
	susie_statue.setdepth = 0;
	susie_statue.depth = 97000;
}
if (global.flag[307] == 2)
{
	var susie_plush = instance_create(317, 143, obj_npc_sign);
	susie_plush.sprite_index = spr_dw_susie_plush;
	with (susie_plush)
		scr_depth();
}
if (global.chapter != 2 || global.plot >= 15)
{
	instance_destroy();
}
else
{
	scr_losechar();
	if (instance_exists(obj_caterpillarchara))
		instance_destroy(obj_caterpillarchara);
	scr_getchar(2);
	scr_getchar(3);
	scr_makecaterpillar(obj_mainchara.x - 40, obj_mainchara.y, 2, 0);
	scr_makecaterpillar(obj_mainchara.x - 80, obj_mainchara.y, 3, 1);
}
