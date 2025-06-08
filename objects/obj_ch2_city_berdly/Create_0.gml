con = -1;
customcon = 0;
shortened = false;
dogcone1 = scr_dark_marker(487, 75, spr_cone_alley);
with (dogcone1)
	scr_depth();
dogcone2 = scr_dark_marker(dogcone1.x - 40, 75, spr_cone_alley);
with (dogcone2)
	scr_depth();
north_collider = instance_create(dogcone2.x - 15, 85, obj_soliddark);
north_collider.image_xscale = 2.5;
if (global.chapter != 2 || global.plot >= 79)
{
	if (global.flag[349] == 1)
	{
		var berdly_npc = instance_create(607, 97, obj_npc_sign);
		berdly_npc.sprite_index = spr_berdly_ice;
		with (berdly_npc)
			scr_depth();
	}
	instance_destroy();
}
else if (scr_sideb_get_phase() == 0)
{
	if (global.tempflag[30] == 1)
		shortened = true;
}
if (global.flag[915] > 5 && global.flag[916] == 0)
{
	savepoint = instance_create(386, 97, obj_savepoint);
	if (i_ex(north_collider))
	{
		with (north_collider)
			instance_destroy();
	}
	dogcone2.x -= 30;
	dogcone2.y += 35;
	dogcone1.x += 67;
	dogcone1.y += 47;
	dogcone1.image_angle -= 90;
	instance_create(86, 80, obj_cone);
	instance_create(126, 80, obj_cone);
	instance_create(880, 104, obj_cone);
	instance_create(880, 136, obj_cone);
	instance_create(880, 168, obj_cone);
	instance_create(880, 200, obj_cone);
}
else if (global.plot >= 79)
{
	savepoint = instance_create(460, 100, obj_savepoint);
}
