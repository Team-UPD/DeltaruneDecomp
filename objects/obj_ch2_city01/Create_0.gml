con = -1;
customcon = 0;
noellejoin = false;
leavecon = 0;
leaveleftattempt = 0;
leaverightattempt = 0;
if (global.chapter != 2)
{
	instance_destroy();
}
else if (global.plot < 70)
{
	scr_losechar();
	if (instance_exists(obj_caterpillarchara))
		instance_destroy(obj_caterpillarchara);
	alleyoverlay = scr_marker(320, 40, spr_pixel_white);
	alleyoverlay.image_xscale = 30;
	alleyoverlay.image_yscale = 50;
	alleyoverlay.image_blend = c_black;
	alleyoverlay.image_alpha = 0.5;
	with (alleyoverlay)
		scr_depth();
	noellemarker = scr_dark_marker(360, 205, spr_noelle_walk_right_dw);
}
else
{
	con = 0;
	if (global.flag[357] == 1)
	{
		hackernpc = instance_create(150, 158, obj_npc_sign);
		hackernpc.sprite_index = spr_npc_cursor_walk_right;
	}
	instance_create(360, 185, obj_savepoint);
}
