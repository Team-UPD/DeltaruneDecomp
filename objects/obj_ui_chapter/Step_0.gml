if (_fade_in)
{
	_alpha = lerp(_alpha, 1, 0.06);
	y = lerp(y, ystart, 0.14);
	_chapter_choice.set_alpha(_alpha);
	_chapter_choice.y = lerp(_chapter_choice.y, _chapter_choice.ystart, 0.14);
	for (var i = 0; i < array_length(_choices); i++)
	{
		var choice = _choices[i];
		choice.set_alpha(_alpha);
		choice.y = lerp(choice.y, choice.ystart, 0.14);
	}
	if (_alpha >= 1)
		_fade_in = false;
}
if (!_scroll_enabled)
	exit;
if (left_p())
{
	audio_play_sound(snd_menumove, 50, 0);
	_choice_index = scr_wrap(_choice_index - 1, 0, array_length(_choices) - 1);
	highlight_choice();
}
else if (right_p())
{
	audio_play_sound(snd_menumove, 50, 0);
	_choice_index = scr_wrap(_choice_index + 1, 0, array_length(_choices) - 1);
	highlight_choice();
}
else if (button2_p())
{
	audio_play_sound(snd_swing, 50, 0);
	trigger_event("select", (3 << 0));
}
