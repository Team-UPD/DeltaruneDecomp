if (!init)
	exit;
if (_fade_in)
{
	_alpha = lerp(_alpha, 1, 0.06);
	_y_pos = lerp(_y_pos, 220, 0.14);
	for (var i = 0; i < array_length(_choices); i++)
	{
		var choice = _choices[i];
		choice.set_alpha(_alpha);
		choice.y = lerp(choice.y, choice.ystart, 0.14);
	}
	_version_display.set_alpha(_alpha);
	if (_alpha >= 1)
		_fade_in = false;
	_timer++;
	if (_timer == 6)
	{
		enable_input();
		enable_select();
	}
}
if (!_input_enabled)
	exit;
if (up_p())
{
	audio_play_sound(snd_menumove, 50, 0);
	_choice_index = scr_wrap(_choice_index - 1, 0, array_length(_choices) - 1);
	enable_select();
}
else if (down_p())
{
	audio_play_sound(snd_menumove, 50, 0);
	_choice_index = scr_wrap(_choice_index + 1, 0, array_length(_choices) - 1);
	enable_select();
}
