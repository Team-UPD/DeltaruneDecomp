layer_set_visible("reference", 0);
init = 0;
if (global.flag[542] != 0)
{
	swatch = instance_create(500, 500, obj_chaseenemy);
	with (swatch)
	{
		myencounter = 64;
		encounterflag = 558;
		sprite_index = spr_npc_swatchling_sweep_walk;
		touchsprite = sprite_index;
		alertskip = 1;
		pacetype = 0;
		chasetype = -1;
		cancelwalk = 1;
		image_speed = 0.25;
		eraser = 1;
	}
	tasque = instance_create(500, 500, obj_chaseenemy);
	with (tasque)
	{
		myencounter = 52;
		encounterflag = 558;
		sprite_index = spr_tasque_idle;
		touchsprite = sprite_index;
		alertskip = 1;
		pacetype = 0;
		chasetype = -1;
		cancelwalk = 1;
		image_speed = 0.25;
		eraser = 1;
	}
}
else
{
	instance_destroy();
}
pathProg = 0;
timer = 0;
