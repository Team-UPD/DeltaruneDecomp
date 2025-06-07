door = scr_marker(236, 26, spr_classdoor);
with (door)
	scr_depth();
con = 0;
global.facing = 0;
if (global.plot < 2)
{
	global.facing = 0;
	con = 1;
	with (obj_mainchara)
	{
		x = 240;
		y = 30;
		scr_depth();
	}
	alphys = scr_marker(50, 50, spr_alphysd);
	with (alphys)
		scr_depth();
	global.interact = 1;
}
if (global.plot >= 3)
{
	doorb = instance_create(242, 48, obj_doorB);
	with (door)
		depth = 900000;
	with (obj_npc_facing)
		instance_destroy();
	with (obj_tem_school)
		instance_destroy();
	sunset = scr_marker(3, 0, spr_torielclass_sunsetoverlay);
	with (sunset)
	{
		image_alpha = 0.4;
		depth = 2000;
	}
	instance_destroy();
}
