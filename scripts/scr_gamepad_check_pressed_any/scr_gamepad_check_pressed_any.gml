function scr_gamepad_check_pressed_any()
{
	var button_pressed;
	if (!i_ex(obj_gamecontroller))
	{
		return false;
	}
	else
	{
		button_pressed = false;
		for (var i = 0; i < 10; i += 1)
		{
			if (gamepad_button_check_pressed(obj_gamecontroller.gamepad_id, global.input_g[i]))
			{
				button_pressed = true;
				break;
			}
		}
	}
	return button_pressed;
}
