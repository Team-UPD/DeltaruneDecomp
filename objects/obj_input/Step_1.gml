if (!_init)
	exit;
for (var i = 0; i < 10; i += 1)
{
	global.input_released[i] = 0;
	global.input_pressed[i] = 0;
}
if (obj_gamecontroller.gamepad_active == 1)
{
	for (var i = 0; i < 4; i += 1)
	{
		if (keyboard_check(global.input_k[i]) || (instance_exists(obj_gamecontroller) && (gamepad_button_check(obj_gamecontroller.gamepad_id, global.input_g[i]) || scr_gamepad_axis_check(obj_gamecontroller.gamepad_id, i))))
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
		if (keyboard_check(global.input_k[i]) || (instance_exists(obj_gamecontroller) && gamepad_button_check(obj_gamecontroller.gamepad_id, global.input_g[i])))
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
