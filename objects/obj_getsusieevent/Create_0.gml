rcon = 0;
block = -4;
if (global.plot >= 38)
{
	doormarker = scr_dark_marker(400, 40, spr_drdoor);
	doormarker.depth = 600000;
	doormarker.image_index = 1;
	instance_create(380, 120, obj_soliddark);
	instance_create(500, 120, obj_soliddark);
	door = instance_create(440, 120, obj_doorA);
	door.image_xscale = 2;
	door.image_yscale = 2;
	instance_create(520, 260, obj_npc_sign);
	visible = 0;
	if (global.plot == 38)
		rcon = 1;
	if (global.plot < 40)
	{
		hathy = instance_create(250, 240, obj_chaseenemy);
		hathy.radius = 30;
	}
}
else
{
	doormarker = scr_dark_marker(400, 40, spr_drdoor);
	doormarker.depth = 600000;
	block = instance_create(400, 120, obj_soliddark);
	block.image_xscale = 3;
}
con = 1;
if (global.plot >= 37)
{
	visible = 0;
	con = -1;
}
walkcon = 0;
image_speed = 0;
