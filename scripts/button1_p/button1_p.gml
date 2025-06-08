function button1_p()
{
	if (global.input_pressed[4])
	{
		return 1;
	}
	else if (global.input_pressed[7])
	{
		return 1;
	}
	else if (gamepad_button_check_pressed(obj_gamecontroller.gamepad_id, gp_shoulderlb))
	{
		if (!obj_gamecontroller.gamepad_shoulderlb_reassign)
			return 1;
	}
}
