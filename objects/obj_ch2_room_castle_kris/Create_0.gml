if (global.flag[394] == 1)
{
	icee_cushion = instance_create(128, 224, obj_npc_sign);
	icee_cushion.sprite_index = spr_dw_icee_cushion;
	icee_cushion.setdepth = 0;
	icee_cushion.depth = 97000;
}
if (global.flag[106] == 1)
{
	moss_readable = instance_create(470, 386, obj_readable_room1);
	moss = scr_marker(460, 366, spr_dw_kris_room_moss);
	with (moss)
		depth = 900000;
}
if (global.flag[207] >= 2)
{
	trash = scr_marker(301, 108, bg_dw_kris_room_trash);
	with (trash)
		scr_depth();
}
else
{
	manual_stand = scr_marker(301, 108, bg_dw_kris_room_manual_stand);
	with (manual_stand)
		scr_depth();
}
