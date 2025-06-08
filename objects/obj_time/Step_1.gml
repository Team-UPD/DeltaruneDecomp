if (!paused)
{
	global.time += 1;
	if (global.is_console && os_is_paused())
	{
		paused = true;
		if (!sprite_exists(screenshot))
		{
			var sw = surface_get_width(application_surface);
			var sh = surface_get_height(application_surface);
			screenshot = sprite_create_from_surface(application_surface, 0, 0, sw, sh, 0, 0, 0, 0);
		}
		exit;
	}
}
else
{
	exit;
}
if (scr_debug())
{
}
if (keyboard_check(vk_escape))
{
	if (quit_timer < 0)
		quit_timer = 0;
	quit_timer += 1;
	if (quit_timer >= 30)
		ossafe_game_end();
}
else
{
	quit_timer -= 2;
}
if (keyboard_check_pressed(vk_f4) || fullscreen_toggle == 1)
	alarm[1] = 1;
for (var i = 0; i < 10; i += 1)
{
	global.input_released[i] = 0;
	global.input_pressed[i] = 0;
}
gamepad_check_timer += 1;
if (gamepad_check_timer >= 90)
{
	if (!gamepad_is_connected(obj_gamecontroller.gamepad_id))
	{
		var gp_num = gamepad_get_device_count();
		var any_connected = false;
		for (var i = 0; i < gp_num; i++)
		{
			if (gamepad_is_connected(i))
			{
				obj_gamecontroller.gamepad_active = 1;
				obj_gamecontroller.gamepad_id = i;
				any_connected = true;
				break;
			}
		}
		if (any_connected == false)
			obj_gamecontroller.gamepad_active = 0;
	}
	gamepad_check_timer = 0;
}
if (obj_gamecontroller.gamepad_active == 1 && quicksaved != 2)
{
	for (var i = 0; i < 4; i += 1)
	{
		if (keyboard_check(global.input_k[i]) || (i_ex(obj_gamecontroller) && (gamepad_button_check(obj_gamecontroller.gamepad_id, global.input_g[i]) || scr_gamepad_axis_check(obj_gamecontroller.gamepad_id, i))))
		{
			if (global.input_held[i] == 0)
				global.input_pressed[i] = 1;
			global.input_held[i] = 1;
		}
		else
		{
			if (global.input_held[i] == 1)
				global.input_released[i] = 1;
			global.input_held[i] = 0;
		}
	}
	for (var i = 4; i < 10; i += 1)
	{
		if (keyboard_check(global.input_k[i]) || (i_ex(obj_gamecontroller) && gamepad_button_check(obj_gamecontroller.gamepad_id, global.input_g[i])))
		{
			if (global.input_held[i] == 0)
				global.input_pressed[i] = 1;
			global.input_held[i] = 1;
		}
		else
		{
			if (global.input_held[i] == 1)
				global.input_released[i] = 1;
			global.input_held[i] = 0;
		}
	}
}
else
{
	for (var i = 0; i < 10; i += 1)
	{
		if (keyboard_check(global.input_k[i]))
		{
			if (global.input_held[i] == 0)
				global.input_pressed[i] = 1;
			global.input_held[i] = 1;
		}
		else
		{
			if (global.input_held[i] == 1)
				global.input_released[i] = 1;
			global.input_held[i] = 0;
		}
	}
}
if (scr_debug())
{
}
