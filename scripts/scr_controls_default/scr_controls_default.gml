function scr_controls_default()
{
	global.button0 = gp_face1;
	global.button1 = gp_face2;
	global.button2 = gp_face4;
	if (os_type == os_ps4 || os_type == os_ps5)
	{
		var os_map = os_get_info();
		var ps4_confirm_button = undefined;
		if (os_map != -1)
		{
			var mapsize = ds_map_size(os_map);
			var key = ds_map_find_first(os_map);
			for (var i = 0; i < (mapsize - 1); i++)
			{
				if (key == "enter_button_assign")
					ps4_confirm_button = ds_map_find_value(os_map, key);
				else
					key = ds_map_find_next(os_map, key);
			}
			ds_map_destroy(os_map);
		}
		if (ps4_confirm_button == 0)
		{
			global.button0 = gp_face2;
			global.button1 = gp_face1;
		}
		else
		{
			global.button0 = gp_face1;
			global.button1 = gp_face2;
		}
		global.button2 = gp_face4;
	}
	else if (scr_is_switch_os())
	{
		global.button0 = gp_face2;
		global.button1 = gp_face1;
		global.button2 = gp_face4;
	}
	global.default_button0 = global.button0;
	global.default_button1 = global.button1;
	global.default_button2 = global.button2;
	global.input_k[0] = vk_down;
	global.input_k[1] = vk_right;
	global.input_k[2] = vk_up;
	global.input_k[3] = vk_left;
	global.input_k[4] = ord("Z");
	global.input_k[5] = ord("X");
	global.input_k[6] = ord("C");
	global.input_k[7] = vk_enter;
	global.input_k[8] = vk_shift;
	global.input_k[9] = vk_control;
	global.input_g[0] = gp_padd;
	global.input_g[1] = gp_padr;
	global.input_g[2] = gp_padu;
	global.input_g[3] = gp_padl;
	global.input_g[4] = global.button0;
	global.input_g[5] = global.button1;
	global.input_g[6] = global.button2;
	global.input_g[7] = 999;
	global.input_g[8] = 999;
	global.input_g[9] = 999;
	if (!i_ex(obj_gamecontroller))
		instance_create(0, 0, obj_gamecontroller);
	with (obj_gamecontroller)
		gamepad_shoulderlb_reassign = 0;
}
