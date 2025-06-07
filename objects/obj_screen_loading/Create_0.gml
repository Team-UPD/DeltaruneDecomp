_target_chapter = -1;
_init = false;
_callback = -4;
_initialize_text = "";
_y_offset = -16;
_font = 5;

show_loading_screen = function(arg0, arg1)
{
	_target_chapter = arg0;
	_callback = arg1;
	_initialize_text = get_text(_target_chapter);
	_font = get_font();
	_init = true;
	var delay = 1;
	if (instance_exists(obj_event_manager))
	{
		if (obj_event_manager.has_pending_trophies())
		{
			delay = 30;
			obj_event_manager.resolve_trophies();
		}
	}
	alarm[0] = delay;
};

get_text = function(arg0)
{
	var _text = "INITIALIZING\nCHAPTER " + string(arg0);
	if (global.lang == "ja")
		_text = "CHAPTER " + string(arg0) + "を\nはじめます";
	if (arg0 == 0)
	{
		_text = "LOADING\nCHAPTER\nSELECT";
		if (global.lang == "ja")
			_text = "チャプター\n選択画面\nよみこみ中";
	}
	return _text;
};

get_font = function()
{
	if (room == room_chapter_continue)
		return (global.lang == "en") ? 5 : 10;
	else
		return (global.lang == "en") ? 6 : 1;
};
