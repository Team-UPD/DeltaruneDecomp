if (scr_sideb_get_phase() != 3)
{
	con = -1;
	customcon = 0;
	if (global.chapter != 2 || global.plot >= 125)
	{
		instance_destroy();
	}
	else
	{
		berdly_marker = scr_dark_marker(680, 165, spr_berdly_walk_left_dw);
		with (berdly_marker)
			scr_depth();
		berdly_exit = false;
		berdly_shadow = 0;
		susie_exit = false;
		susie_shadow = 0;
	}
	door = scr_dark_marker(590, 80, spr_dw_mansion_door_open);
	door.depth = 999999;
	bookcase_x = (global.flag[392] == 0 && global.plot < 150) ? 590 : 520;
	bookcase = instance_create(bookcase_x, 80, obj_npc_sign);
	bookcase.sprite_index = spr_dw_mansion_bookcase;
	bookcase.depth = 899999;
	door_left = scr_dark_marker(250, 80, spr_dw_mansion_door_open);
	door_left.depth = 999999;
	bookcase_x_left = (global.plot >= 150) ? 180 : 250;
	bookcase_left = instance_create(bookcase_x_left, 80, obj_npc_sign);
	bookcase_left.sprite_index = spr_dw_mansion_bookcase;
	bookcase_left.depth = 899999;
	if (global.plot >= 150)
	{
		var sign_1f = scr_dark_marker(250, 40, spr_mansion_floor_sign);
		sign_1f.image_speed = 0;
		with (sign_1f)
			scr_depth();
		var floor_dir_1f = scr_dark_marker(250, 0, bg_dw_mansion_floor_direction);
		floor_dir_1f.image_speed = 0;
		floor_dir_1f.image_index = 1;
		with (floor_dir_1f)
			scr_depth();
		var sign_4f = scr_dark_marker(590, 40, spr_mansion_floor_sign);
		sign_4f.image_speed = 0;
		sign_4f.image_index = 3;
		with (sign_4f)
			scr_depth();
		var floor_dir_4f = scr_dark_marker(590, 0, bg_dw_mansion_floor_direction);
		floor_dir_4f.image_speed = 0;
		with (floor_dir_4f)
			scr_depth();
	}
	hide_entrance = false;
	if (!scr_havechar(2))
	{
		layer_set_visible("Tiles_ExitBlock", 1);
		var exit_collider = instance_create(240, 360, obj_soliddark);
		exit_collider.image_xscale = 2;
	}
	if (global.flag[345] == 1)
	{
		var icon_npc = instance_create(1047, 150, obj_npc_room);
		icon_npc.sprite_index = spr_npc_iconman;
	}
}
