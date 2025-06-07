myinteract = 0;
talked = 0;
image_speed = 0.2;
depthcancel = 0;
if (global.darkzone == 1)
{
	image_xscale = 2;
	image_yscale = 2;
}
if (room == room_dark1)
{
	sprite_index = spr_shine;
	if (global.time > 14400 || global.flag[10] == 1)
		instance_destroy();
}
if (room == room_town_mid)
{
	if (x >= 320)
		sprite_index = spr_npc_icemascot_fake;
	else
		sprite_index = spr_npc_icemascot2;
}
if (room == room_diner)
{
	sprite_index = spr_npc_greenfire;
	depth = 4000;
	depthcancel = 1;
}
if (room == room_cc_clover)
	sprite_index = spr_cc_boombox;
if (room == room_cc_6f)
	sprite_index = spr_smallchecker_front;
if (room == room_cc_throneroom)
{
	if (global.plot < 240)
		instance_destroy();
	sprite_index = spr_smallchecker_front;
}
if (room == room_field_maze)
{
	sprite_index = spr_jigsawry_clobbered;
	if (global.plot >= 150)
		instance_destroy();
}
if (room == room_forest_savepoint_relax)
{
	image_speed = 0.1;
	sprite_index = spr_diamond_fan;
}
if (depthcancel == 0)
	scr_depth();
