_parent = -4;
_init = false;
_input_enabled = false;
_is_highlighted = false;
_disabled = false;
_input_buffer = 2;
_input_time = _input_buffer;
_heart_enabled = false;
_text = "";
_value = -4;
_text_offset = 0;
_alpha = 1;
_scale = 2;
_color = 16777215;
_font = (global.lang == "en") ? 2 : 1;

init = function(arg0, arg1, arg2)
{
	_parent = arg0;
	_text = arg1;
	_value = arg2;
	_init = true;
};

set_font = function(arg0)
{
	_font = arg0;
};

set_alpha = function(arg0)
{
	_alpha = arg0;
};

enable_input = function()
{
	_input_enabled = true;
	_input_time = _input_buffer;
};

disable_input = function()
{
	_input_enabled = false;
};

disable = function()
{
	_disabled = true;
	_color = 8421504;
	disable_input();
};

enable = function()
{
	_disabled = false;
	reset();
};

highlight = function()
{
	_is_highlighted = true;
	_color = 65535;
	show_heart();
	enable_input();
};

reset = function()
{
	_is_highlighted = false;
	_color = 16777215;
	hide_heart();
	disable_input();
};

select = function()
{
	audio_play_sound(snd_select, 50, 0);
	_parent.trigger_event("select", _value);
};

hide_heart = function()
{
	_heart_enabled = false;
};

show_heart = function()
{
	_heart_enabled = true;
};
