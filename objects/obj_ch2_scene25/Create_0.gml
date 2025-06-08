con = -1;
customcon = 0;
timer = 0;
forceend2 = 0;
shortened = false;
if (scr_sideb_get_phase() >= 3)
{
	instance_destroy();
}
else if (global.chapter != 2)
{
	instance_destroy();
}
else if (global.plot >= 165)
{
	var savepoint = instance_create(905, 40, obj_savepoint);
	with (savepoint)
		scr_depth();
	berdlynpc = instance_create(895, 228, obj_npc_sign);
	berdlynpc.sprite_index = (global.flag[457] == 1) ? spr_berdly_hurt_kneel : spr_berdly_hurt_kneel_burnt;
	with (berdlynpc)
		scr_depth();
	instance_destroy();
}
else
{
	with (obj_mainchara)
	{
		x = 26;
		y = 246;
	}
	if (global.tempflag[31] == 1)
		shortened = true;
	berdlynpc = instance_create(895, 228, obj_npc_sign);
	berdlynpc.sprite_index = (global.flag[457] == 1) ? spr_berdly_hurt_kneel : spr_berdly_hurt_kneel_burnt;
	with (berdlynpc)
		scr_depth();
	berdlynpc.visible = 0;
	berdly_npc_realign = false;
	berdly_full_spare = false;
}
