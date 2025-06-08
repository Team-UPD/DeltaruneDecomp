con = 0;
customcon = 0;
morphDone = 0;
specialDraw = 0;
glowValue = 0;
specialTimer = 0;
bgAlpha = 0;
explosiontimer = 0;
kr_x_save = x;
kr_y_save = y;
su_x_save = x;
su_y_save = y;
ra_x_save = x;
ra_y_save = y;
if (global.chapter != 2)
	instance_destroy();
if (global.chapter == 2)
{
	pause_music = false;
	if (global.plot >= 55)
	{
		con = -1;
		instance_create(458, 127, obj_savepoint);
		pb_marker = instance_create(290, 145, obj_marker);
		pb_marker.image_yscale = 2;
		pb_marker.image_xscale = 2;
		pb_marker.sprite_index = spr_cutscene_10_platter_bottom;
		if (global.plot < 65)
		{
			ar_npc = instance_create(325, 200, obj_npc_sign);
			ar_npc.sprite_index = spr_cutscene_10_arcade_rubble;
			ar_npc.depthbonus = 2000;
			ar_npc.image_yscale = 2;
			ar_npc.image_xscale = 2;
			ar_npc.depth = 95000;
			pb_marker.depth = ar_npc.depth + 5000;
		}
		else
		{
			with (pb_marker)
				scr_depth();
		}
		sw_npc = instance_create(300, 110, obj_npc_room_animated);
		sw_npc.sprite_index = spr_npc_swatchling_sweep;
		sw_npc.image_speed = 0.1;
		with (sw_npc)
			scr_depth();
		instance_destroy();
	}
}
