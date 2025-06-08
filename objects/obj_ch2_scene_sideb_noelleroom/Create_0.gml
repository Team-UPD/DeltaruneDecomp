con = -1;
customcon = 0;
timer = 0;
if (scr_sideb_get_phase() >= 3)
{
	door = scr_marker(540, 160, spr_dw_mansion_door_closed);
	doorsolid = instance_create(540, 240, obj_soliddark);
	doorsolid.image_xscale = 3;
	door.depth = 500000;
}
if (scr_sideb_get_phase() < 3)
	instance_destroy();
else if (global.flag[915] < 9)
	con = 0;
else
	instance_destroy();
