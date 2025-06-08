con = (global.plot >= 101) ? 99 : 0;
customcon = 0;
lancerfade = 0;
fadetimer = 0;
krisdoor = -1;
berdlydoor = -1;
krisdoor_open = false;
krisdoor_open_timer = 0;
susie_heal = false;
heal_timer = 0;
heal_beam = -1;
berdly_door_open = false;
berdly_door_close = false;
if (global.chapter != 2)
{
	con = -1;
	instance_destroy();
}
else if (global.plot >= 120)
{
	var swatchling_npc_a = instance_create(1335, 165, obj_npc_butler);
	with (swatchling_npc_a)
	{
		scr_depth();
		current_pal = yellow;
	}
	var swatchling_npc_b = instance_create(1055, 165, obj_npc_butler);
	with (swatchling_npc_b)
	{
		scr_depth();
		current_pal = orange;
	}
}
else if (global.plot >= 101)
{
	instance_destroy();
}
