_parent = -4;
_input_enabled = false;
_input_buffer = 2;
_input_time = _input_buffer;
_slots = [];
_chapters = [];
_chapter_index = 0;
_fade_in = false;
var max_chapter = (7 << 0);
var max_available_chapter = (4 << 0);
for (var i = 0; i < max_chapter; i++)
{
	var new_chapter = instance_create(0, -10 + (i * 60), obj_ui_chapter);
	var chapter = i + 1;
	new_chapter.init(id, chapter);
	_slots[array_length(_slots)] = new_chapter;
}
for (var i = 0; i < max_available_chapter; i++)
{
	var chapter = _slots[i];
	chapter.enable();
	_chapters[array_length(_chapters)] = chapter;
}

init = function(arg0)
{
	_parent = arg0;
	_init = true;
};

fade_in = function()
{
	for (var i = 0; i < array_length(_slots); i++)
		_slots[i].fade_in();
};

reset = function()
{
	_chapter_index = 0;
	for (var i = 0; i < array_length(_chapters); i++)
	{
		var chapter = _chapters[i];
		chapter.reset();
	}
};

highlight_chapter = function(arg0)
{
	for (var i = 0; i < array_length(_chapters); i++)
	{
		var chapter = _chapters[i].get_chapter();
		if (chapter == arg0)
		{
			_chapter_index = i;
			highlight();
		}
	}
};

highlight = function()
{
	for (var i = 0; i < array_length(_chapters); i++)
	{
		var chapter = _chapters[i];
		chapter.reset();
		if (i == _chapter_index)
			chapter.highlight();
	}
};

highlight_bottom = function()
{
	_chapter_index = array_length(_chapters) - 1;
	highlight();
};

enable_input = function()
{
	_input_enabled = true;
	_input_time = _input_buffer;
};

disable_input = function()
{
	_input_enabled = false;
	for (var i = 0; i < array_length(_chapters); i++)
	{
		var chapter = _chapters[i];
		chapter.disable_input();
	}
};

disable_all = function()
{
	_input_enabled = false;
	for (var i = 0; i < array_length(_chapters); i++)
	{
		var chapter = _chapters[i];
		chapter.disable_all();
	}
};

trigger_event = function(arg0, arg1)
{
	switch (arg0)
	{
		case "disable_scroll":
			disable_input();
			break;
		case "enable_scroll":
			enable_input();
			break;
		case "launch_game":
			disable_all();
			_parent.trigger_event("launch_game", arg1);
			break;
	}
};
