_init = false;

init = function()
{
	scr_controls_default();
	for (i = 0; i < 10; i += 1)
	{
		global.input_pressed[i] = 0;
		global.input_held[i] = 0;
		global.input_released[i] = 0;
	}
	_init = true;
};
