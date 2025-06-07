_parent = -4;
_init = false;
_text = "";
_y_pos = 220;
_input_enabled = false;
_choices = [];
_choice_index = 0;
_alpha = 0;
_scale = 1;
_color = 16777215;
_font = (global.lang == "en") ? 2 : 1;
_text_prompt_y_pos = (global.lang == "en") ? 16 : 8;
_line_height = (global.lang == "en") ? 16 : 18;
_fade_in = false;
_timer = 0;
_version_display = -4;
_register_display = false;
_register_text = [];
_prompt_text = [];

init = function(arg0, arg1, arg2 = [], arg3 = 0)
{
	_parent = arg0;
	_text = arg1;
	if (string_pos("~", _text) != 0)
	{
		_register_display = true;
		_prompt_text = string_split(_text, "#");
		_register_text = string_split(_prompt_text[0], "~");
	}
	_y_pos -= 40;
	for (var i = 0; i < array_length(arg2); i++)
	{
		var choice_data = arg2[i];
		var choice = instance_create(280 + arg3, 260 + (i * 40), obj_ui_choice);
		choice.init(id, choice_data.choice_text, choice_data.choice_value);
		choice.set_alpha(0);
		choice.y -= 40;
		_choices[array_length(_choices)] = choice;
	}
	_version_display = instance_create(x, 410, obj_ui_version);
	_version_display.set_alpha(0);
	init = true;
	for (var i = 0; i < array_length(_choices); i++)
	{
		var choice = _choices[i];
		if (i == _choice_index)
		{
			choice.highlight();
			choice.disable_input();
		}
		else
		{
			choice.reset();
		}
	}
};

fade_in = function()
{
	_fade_in = true;
};

set_alpha = function(arg0)
{
	_alpha = arg0;
};

enable_input = function()
{
	_input_enabled = true;
};

disable_input = function()
{
	_input_enabled = false;
	for (var i = 0; i < array_length(_choices); i++)
	{
		var choice = _choices[i];
		choice.disable_input();
	}
};

trigger_event = function(arg0, arg1)
{
	disable_input();
	_parent.trigger_event(arg0, arg1);
};

enable_select = function()
{
	for (var i = 0; i < array_length(_choices); i++)
	{
		var choice = _choices[i];
		if (i == _choice_index)
			choice.highlight();
		else
			choice.reset();
	}
};

clean_up = function()
{
	var i = array_length(_choices) - 1;
	while (i >= 0)
	{
		var choice = _choices[i];
		with (choice)
			instance_destroy();
		i--;
	}
	_choices = [];
	instance_destroy();
};
